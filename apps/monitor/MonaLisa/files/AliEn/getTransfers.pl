# getTransfers.pl
#
# This script is called ONLY ONCE at ML startup to synchronize the current
# status of active transfers. For this, it basically executes a 'listTransfer' command
# on AliEn and it fetches the transfers that haven't finished yet.
#
# WARNING
# - this should not be called too often because it creates a considerable load!
#
# NOTICE
# - this should run only on the ML where AliEn Central Services report
#
# Catalin Cirstoiu <Catalin.Cirstoiu@cern.ch>
# Version 0.1
#
# 03/03/2006 - first version


use AliEn::Util;
use AliEn::UI::Catalogue::LCM;
use strict;

my $cat=AliEn::UI::Catalogue::LCM->new({silent=>1}) or exit(-2);
my @data = $cat->execute("listTransfer") or exit(-3);

die "Failed to execute top!" if(! @data);

#use Data::Dumper;
#print Dumper(@data);
for my $job (@{$data[0]}){
#	print ref($job)."\n";
#	print Dumper($job);
	my $status = AliEn::Util::transferStatusForML($job->{status});
	# we don't want finished transfers (successfull or not)
	next if(($job->{status} eq "FAILED") || ($job->{status} eq "KILLED") || ($job->{status} eq "DONE") || ($job->{status} eq "EXPIRED"));
	my $sourceSE = $job->{SE} || 'NO_SE';
	my $destinationSE = $job->{destination} || 'NO_SE';
	my $size = $job->{size} || 0;
	my $received = $job->{received} || 0;
	my $started = $job->{started} || 0;
	my $finished = $job->{finished} || 0;
	my $user = $job->{user} || 'unknown';	
	print "$job->{transferId}\t$status\t$size\t$user\t$sourceSE\t$destinationSE\t$received\t$started\t$finished\n";
}
print "DONE\n";

