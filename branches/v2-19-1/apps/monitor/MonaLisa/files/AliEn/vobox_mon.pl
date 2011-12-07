# vobox-mon.pl
#
# Monitor the VOBOX host and the services running on it.
# The data is sent to the local ML on site, using ApMon.
#
# Catalin Cirstoiu, <Catalin.Cirstoiu@cern.ch>
#
# Changelog
# 2007-10-24 - Added support for monitoring the ALIEN_*DIR (CACHE, LOG, TMP)
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

# Get the disk usage for the given set of paths
sub get_disk_usage {
	my $map = shift;
	my $result = {};
	while(my($name, $path) = each(%$map)){
		my @df = ();
		my $msg = "ok";
		if(open(DF, "df -P -k $path 2>&1 | tail -1 |")){
			my $line = <DF>;
			chomp $line;
			if($line && $line =~ /\S+\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)%/){
				push(@df, $1 / 1024.0, $2 / 1024.0, $3 / 1024.0, $4);
			}else{
				$msg = $line;
			}
			close DF;
		}else{
			$msg = "Failed running df";
		}
		push(@df, -1, -1, -1, -1) if(! @df);
		$result->{$name."_total"} = $df[0];
		$result->{$name."_used"} = $df[1];
		$result->{$name."_free"} = $df[2];
		$result->{$name."_usage"} = $df[3];
		$result->{$name."_path"} = $path;
		$result->{$name."_msg"} = $msg;
	}
	return $result;
}

# get the used disk space by the given file or folder
sub get_du {
        my $map = shift;
        my $result = {};

        while (my($name, $path) = each(%$map)){
		$result->{$name."_path"} = $path;

                if (open(DU, "du -sk $path 2>/dev/null | tail -1 |")){
                        my $line = <DU>;

                        chomp $line;


                        if ($line && $line =~ /(\d+)\s+\S+.*/){
                                $result->{$name."_du_MB"} = $1 / 1024.0;
                                $result->{$name."_msg"} = "ok";
                        }
                        else{
                                $result->{$name."_msg"} = $line;
                        }

                        close DU;
                }
		else{
		    $result->{$name."_msg"} = "Failed running du";
		}
        }

        return $result;
}


# Initialize ApMon
my $hostName = $ENV{ALIEN_HOSTNAME} || Net::Domain::hostfqdn();
my $apm = new ApMon(0);
#$apm->setLogLevel("NOTICE");
$apm->setDestinations(['localhost:8884']);
$apm->setMonitorClusterNode("Master", $hostName);  # background host monitoring
my $alien_dirs = {
	LOG_DIR   => $ENV{ALIEN_LOGDIR},
	TMP_DIR   => $ENV{ALIEN_TMPDIR},
	CACHE_DIR => $ENV{ALIEN_CACHEDIR},
};

my $alien_du = {
        "CE.db_MESSAGES" => $ENV{ALIEN_LOGDIR}."/CE.db/MESSAGES"
};

sleep 1;

# Do forever host and services monitoring
print "vobox_mon: ApMon initialized. Starting system background monitoring...\n";
while(1){
	$apm->sendBgMonitoring();
	$apm->sendParameters("Master", $hostName, get_disk_usage($alien_dirs));
	$apm->sendParameters("Master", $hostName, get_du($alien_du));
	sleep 60;
}
