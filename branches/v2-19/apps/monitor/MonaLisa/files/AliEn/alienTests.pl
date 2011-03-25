#!/usr/bin/perl
####################################################################
# Script to perform some simple tests on AliEn
# USAGE: $ALIEN_ROOT/bin/alien -x alienTests.pl
# Author, bugs, questions: Catalin.Cirstoiu@cern.ch
# Original version from: Patricia MENDEZ LORENZO <pmendez@mail.cern.ch>
###################################################################

use strict;
use warnings;

use POE;
use POE::Filter::Line;
use POE::Wheel::Run;

my $MAX_STATUS_LINES = 4;
my $MAX_RUN_TIME = 60;
my $ML_CMD_RUN = "$ENV{ALIEN_ROOT}/java/MonaLisa/Service/CMD/cmd_run.sh";

sub dumpStatus {
	my $service = shift;
	my $status = shift;
	my $message = shift;
	my %others = @_;
	$others{"Message"} = $message if($message);
	my $extra = "";
	while(my ($key, $value) = each(%others)){
		$extra .= "\t$key\t$value";
	}
	print "$service\tStatus\t$status".$extra."\n";
}

# create the test file
umask 0027;

my @tests = (
	"alien version"			=> "alien -v",
	"alien proxy"			=> "grid-proxy-info",
	);

POE::Session->create(
	inline_states => {
		_start => \&start,
		tick => \&tick,
		got_cmd_event => \&got_cmd_event,
		got_err_event => \&got_err_event,
		cmd_finished => \&cmd_finished,
		sig_chld => \&sig_chld,
	});
$poe_kernel->run();
exit 0;

sub start {
	my $heap = $_[HEAP];

	$heap->{test_name} = shift @tests;
	$heap->{test_cmd} = shift @tests;
	if((! $heap->{test_name}) || (! $heap->{test_cmd})){
		dumpStatus("SCRIPTRESULT", 0);
		exit 0;
	}
	$heap->{start_time} = time;
	$heap->{status_lines} = [];
	undef $heap->{cmd_killed};
	undef $heap->{exit_code};
	$poe_kernel->sig(CHLD => "sig_chld");
	$heap->{wheel} = POE::Wheel::Run->new(
		Program      => "$ML_CMD_RUN $heap->{test_cmd}",
		StdioFilter  => POE::Filter::Line->new(),
		StderrFilter => POE::Filter::Line->new(),
		StdoutEvent  => "got_cmd_event",
		StderrEvent  => "got_cmd_event");
	$poe_kernel->delay(tick => 1);
}

sub tick {
	my $heap = $_[HEAP];

	my $now = time;
	my $run_time = $now - $heap->{start_time};
	if($run_time >=$MAX_RUN_TIME){
		$heap->{cmd_killed} = 1;
		$heap->{wheel}->kill();
	}else{
		$poe_kernel->delay(tick => 1);
	}
}

sub got_cmd_event {
	my ($heap, $line) = @_[HEAP, ARG0];

	return if($heap->{cmd_killed});
	shift(@{$heap->{status_lines}}) if(@{$heap->{status_lines}} >= $MAX_STATUS_LINES);
	push(@{$heap->{status_lines}}, $line); 
}

sub sig_chld {
	my ($heap, $sig, $pid, $exit_code) = @_[HEAP, ARG0, ARG1, ARG2];
	
	$exit_code >>= 8;
	my $message = join(" ", @{$heap->{status_lines}});
	$message =~ s/\t/  /g;
	if($exit_code == 0){
		if($heap->{test_name} eq "alien version"){
			my $ver = $1 if $message =~ /Version: (.*)/;
			$ver = $message if ! $ver;
			$ver = "No output" if ! $ver;
			dumpStatus($heap->{test_name}, 0, $ver);
		}elsif($heap->{test_name} eq "alien proxy"){
			my $leftt = $1 if $message =~ /timeleft\s*:\s*([0-9:]*)/;
			my $timeleft = 0;
			my $err = 0;
			my $msg = undef;
			if($leftt){
				my @leftl = reverse(split(/:/, $leftt));
				$timeleft = ($leftl[0] || 0) + 60 * ($leftl[1] || 0) + 3600 * ($leftl[2] || 0);
			}else{
				$msg = ($ENV{X509_USER_PROXY} ? 
					(-r $ENV{X509_USER_PROXY} ?
						"X509_USER_PROXY doesn't point to a readable file."
						:
						'Failed running grid-proxy-info')
					:
					"Undefined X509_USER_PROXY.");
				$err = 1;
			}
			dumpStatus($heap->{test_name}, $err, $msg, "timeleft" => $timeleft);
		}else{
			dumpStatus($heap->{test_name}, 0, $message);
		}
	}else{
		dumpStatus($heap->{test_name}, 1,
			($heap->{cmd_killed} ? "Timeout after $MAX_RUN_TIME sec. " : "Failed with exit code: $exit_code. ").
			"Last lines were: $message");
	}
	$poe_kernel->yield("_start");
}

