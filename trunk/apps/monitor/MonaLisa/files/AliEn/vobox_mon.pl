# vobox-mon.pl
#
# Monitor the VOBOX host and the services running on it.
# The data is sent to the local ML on site, using ApMon.
#
# Catalin Cirstoiu, <Catalin.Cirstoiu@cern.ch>
#
# Changelog
# 2006-07-27 - Changed the way this script works. Now it only checks for a running
#              instance and if it already exists, it will just exit. This way the
#              presence of the running script can be checked from inside ML on a
#              regular basis.
# 2006-06-16 - If in the pidfile we find 'stopped', we don't start anymore.
# 2005-12-06 - Host monitoring is provided by ApMon.

use strict;
use warnings;

use ApMon;
use Net::Domain;

die "vobox_mon: FARM_HOME env var is not defined. It should point to the MonaLisa log directory.\n" if ! $ENV{FARM_HOME};

my $pidFile="$ENV{FARM_HOME}/vobox_mon.pid";
if(-e $pidFile){
	if(open(PIDFILE, $pidFile)){
		my $oldPid = <PIDFILE>;
		chomp $oldPid;
		if($oldPid && kill(0, $oldPid)){
			# everything is fine, exit silently
			exit(0);
		}
	}
}
# Either there is no running script, or there are problems with the pid file
# Anyway, do a cleanup and then start the new vobox_mon
if(open(PS, "env COLUMNS=300 ps -eo 'pid,command' |")){
	while(my $line = <PS>){
		next if ! ($line =~ /vobox_mon.pl/ && $line =~ /perl/);
		my $pid = $1 if $line =~ /^\s*(\d+)/;
		chomp($pid);
		next if $pid == $$;
		print "vobox_mon: Killing previous instance with PID=$pid\n";
		kill(15, $pid);
	}
	close(PS);
}
print "vobox_mon: Starting new instance with PID=$$ ...\n";
# put my PID in the current pid file
if(open(PIDFILE, ">$pidFile")){
	print PIDFILE "$$\n";
	close PIDFILE;
}else{
	die "vobox_mon: Couldn't create the pid file '$pidFile'. Please check access rights!\n"
}

# Initialize ApMon
my $hostName = $ENV{ALIEN_HOSTNAME} || Net::Domain::hostfqdn();
my $apm = new ApMon(0);
$apm->setDestinations(['localhost:8884']);
$apm->setMonitorClusterNode("Master", $hostName);  # background host monitoring
sleep 1;

# Do forever host and services monitoring
print "vobox_mon: ApMon initialized. Starting system background monitoring...\n";
while(1){
	$apm->sendBgMonitoring();
	sleep 60;
}

