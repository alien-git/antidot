# vobox-mon.pl
#
# Monitor the VOBOX host and the services running on it.
# The data is sent to the local ML on site, using ApMon.
#
# Catalin Cirstoiu, <Catalin.Cirstoiu@cern.ch>
#
# Changelog
# 2006-06-16 - If in the pidfile we find 'stopped', we don't start anymore.
# 2005-12-06 - Host monitoring is provided by ApMon.

use strict;
use warnings;

use ApMon;
use Net::Domain;

die "vobox_mon: FARM_HOME env var is not defined. It should point to the ML myFarm.\n" if ! $ENV{FARM_HOME};

my $pidFile="$ENV{FARM_HOME}/vobox_mon.pid";
if(-e $pidFile){
	# kill a previous instance of this script, if any
	if(open(PIDFILE, $pidFile)){
		my $oldPid = <PIDFILE>;
		chomp $oldPid;
		exit(0) if($oldPid eq "stopped");
		kill 15, $oldPid;
	}else{
		die "vobox_mon: Although it exists, could't read the vobox_mon pid file '$pidFile'.\n";
	}
}
# put my PID in the current pid file
if(open(PIDFILE, ">$pidFile")){
	print PIDFILE "$$\n";
	close PIDFILE;
}else{
	die "vobox_mon: Couldn't create the pid file '$pidFile'.\n"
}

# Initialize ApMon
my $hostName = Net::Domain::hostfqdn();
my $apm = new ApMon(0);
$apm->setDestinations(['localhost:8884']);
$apm->setMonitorClusterNode("Master", $hostName);  # background host monitoring
sleep 1;
# Do forever host and services monitoring
while(1){
	$apm->sendBgMonitoring();
	sleep 60;
}

# Monitor service1
sub monServ1 {
	my $result = {};
	$result->{x} = rand(10);
	$result->{y} = rand(5);
	return $result;
}

