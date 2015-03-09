# getJobs.pl
#
# This script is called ONLY ONCE at ML startup to synchronize the current
# status of active jobs. For this, it basically executes a 'top' command
# on AliEn and it fetches the jobs that haven't finished yet.
#
# WARNINGS
# - this should not be called too often because it creates a considerable load!
# - 'alien proxy-init' must be run before this to create a proxy and allow
#   this command to run!
#
# NOTICE
# - this should run only on the ML where AliEn Central Services report
#
# Catalin Cirstoiu <Catalin.Cirstoiu@cern.ch>
# Version 0.2
#
# 15/02/2006 - report all jobs that are not FAILED, DONE or KILLED
# 26/01/2006 - however, report a jobs that are zombies
# 19/01/2006 - first version


use AliEn::Util;
use AliEn::UI::Catalogue::LCM::Computer;
use strict;

my $cat=AliEn::UI::Catalogue::LCM::Computer->new({silent=>1, debug=>0}) or exit(-2);
my @data = $cat->execute("top", "-all");

die "Failed to execute top!" if(! @data);

#use Data::Dumper;
#print Dumper(@data);
for my $job (@data){
	my $status = AliEn::Util::statusForML($job->{status});
	# we don't want finished jobs (successfull or not)
#	next if(($job->{status} eq "FAILED") || ($job->{status} eq "KILLED") || ($job->{status} eq "DONE") || ($job->{status} eq 'DONE_WARNING'));
	my $execSite = $job->{execHost} || 'NO_SITE';
	my $received = $job->{received} || 0;
	my $started = $job->{started} || 0;
	my $finished = $job->{finished} || 0;
	print "$job->{queueId}\t$status\t$job->{user}\@$job->{submitHost}\t$execSite\t$received\t$started\t$finished\n";
}
print "DONE\n";
