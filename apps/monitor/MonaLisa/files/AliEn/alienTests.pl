#!/usr/bin/perl
###############################################################################
# Script to perform some simple tests on AliEn
# USAGE: $ALIEN_ROOT/bin/alien -x alienTests.pl
# versions <  2012 by Patricia Mendez Lorenzo
# # versions >= 2012 by Maarten Litmaath
# modified April 2013 for AliEn v2-20 by Rene Dosdall
################################################################################

use strict;
use warnings;

my $ALIEN_ROOT = $ENV{ALIEN_ROOT};

###############################################################################
# definition of the env
###############################################################################

if (exists $ENV{ALIEN_ROOT}) {
    for ('LD_LIBRARY_PATH', 'PATH') {
	$ENV{$_} =~ s,.*$ENV{ALIEN_ROOT}+[./][^:]+:?,,;
    }
}

$ENV{'PATH'} = "$ENV{'HOME'}/bin:$ENV{'PATH'}";

#
# to avoid that myproxy-* commands might hang:
#

delete $ENV{ 'GLOBUS_TCP_PORT_RANGE'};
delete $ENV{'MYPROXY_TCP_PORT_RANGE'};

my $vobox_dir;

for ('/var/lib', '/opt') {
    last if -d ($vobox_dir = "$_/vobox/alice");
}


###############################################################################
# helper functions
###############################################################################

sub timeout_cmd($@)
{
    my ($timeout, @cmd) = @_;
    my $output;

    pipe READ, WRITE or return (-1, $!);

    my $pid = fork();

    unless (defined $pid) {
	close READ;
	close WRITE;
	return (-1, $!);
    }

    if ($pid == 0) {
	close READ;
	open STDOUT, '>&WRITE';
	close WRITE;

	my $bad = 255;

	pipe READ2, WRITE2 or exit $bad;

	my $pid2 = fork();

	exit $bad unless defined $pid2;

	if ($pid2 == 0) {

	    #
	    # while the requested command is run in its own process group,
	    # this subprocess runs in the original process group and is
	    # therefore allowed to write to the user's tty, if STDERR
	    # happens to be connected to that (in such cases the command
	    # itself might get suspended with a SIGTTOU and time out)
	    #

	    close WRITE2;

	    print STDERR while <READ2>;

	    exit 0;
	}

	close READ2;
	open STDERR, '>&WRITE2';
	close WRITE2;

	setpgrp 0, 0;
	exec @cmd;
	exit 127;
    }

    close WRITE;

    eval {
	local $SIG{ALRM} = sub { die "timeout\n" };
	alarm $timeout;

	$output .= $_ while <READ>;

	alarm 0;
    };

    kill -9, $pid;
    close READ;
    waitpid $pid, 0;

    return ($?, $output);
}

sub explain($)
{
    my $val = shift;
    my $sig = $val & 0x7F;
    my $sts = ($val >> 8) & 0xFF;

    return $sig == 9 ? "timeout" :
	$sig ? "killed by signal $sig" : "exit code $sts";
}

sub dumpStatus
{
    my $service = shift;
    my $status  = shift;
    my $message = shift;
    my %others  = @_;
    $others{"Message"} = $message if ($message);
    my $extra = "";

    while (my ($key, $value) = each(%others)) {
        $extra .= "\t$key\t$value";
    }
    print "$service\tStatus\t$status$extra\n";
}

#
# take only the last 5 lines of the given string and concatenate them;
# replace tabs with spaces
#

sub filter_out
{
    my $text = shift;

    $text =~ s/\t/ /g;
    my @lines = split(/\n/, $text);
    @lines = @lines[@lines - 5 .. @lines - 1] if (@lines > 5);
    return join(" ", @lines);
}

sub parse_proxy_timeleft
{
    my $proxy_file = shift;
    my $command = shift;
    my $proxy_type = shift;

    my ($val, $out) = timeout_cmd(30, "$command 2>&1");
    $out = explain($val) unless defined $out;

    return (1, "Failed to execute '$command': " . filter_out($out), 0)
	if ($val);

    my $leftt = $1 if $out =~ /timeleft\s*:\s*([0-9:]+)/;
    my $timeleft = 0;
    my $err = 0;
    my $msg = undef;

    if ($leftt) {
	my @f = reverse(split(/:/, $leftt));
	$timeleft = ($f[0] || 0) + 60 * ($f[1] || 0) + 3600 * ($f[2] || 0);
    } else {
	$msg = $proxy_file ? -r $proxy_file ?
	    "Failed checking the proxy for $proxy_type." :
	    "Proxy for $proxy_type absent or unreadable." :
	    "Undefined proxy file for $proxy_type.";
	$err = 1;
    }

    return ($err, $msg, $timeleft);
}

###############################################################################
## TEST 1:
## Check if the proxy renewal service is running
################################################################################

sub test1
{
    my $service = "alien version";

    my $command = '$ALIEN_ROOT/bin/alien -v 2> /dev/null';
    my ($val, $out) = timeout_cmd(30, "$command 2>&1");
         $out = explain($val) unless defined $out;
    $out = substr($out, -10);
    dumpStatus($service, 0, $out);

}

###############################################################################
# TEST 2:
# Check if the proxy renewal service is running
###############################################################################

sub test2
{
    my $service = "alien proxy";

    my $command = '$ALIEN_ROOT/bin/alien proxy-info 2> /dev/null';
    my ($err, $msg, $timeleft) = parse_proxy_timeleft("", $command, $service);
    dumpStatus($service, 0, $msg, 'timeleft' =>  $timeleft);

}

#############################################
# TEST 10:
# check if the AliEn LDAP server can be read
#############################################

sub test10
{
    #
    # this test is not specific to LCG and should be run by alienTests.pl
    #

    return;

    my $service = "read AliEn LDAP server";

    my $srv = 'alice-ldap.cern.ch:8389';
    my $cmd = "ldapsearch -LLL -x -h $srv -b o=alice,dc=cern,dc=ch"
	. " objectClass=AliEnVOConfig objectClass";

    my ($val, $out) = timeout_cmd(30, "$cmd 2>&1");
    $out = explain($val) unless defined $out;

    if ($out =~ /objectClass: AliEnVOConfig/i) {
	dumpStatus($service, 0);
    } else {
	dumpStatus($service, 1, "The AliEn LDAP server could not be read:"
	    . filter_out($out));
    }
}



for (my $i = 1; $i < 15; $i++)
{
    my $f = "test$i";

    eval "$f() if defined &main::$f";
}

dumpStatus("SCRIPTRESULT", 0);


