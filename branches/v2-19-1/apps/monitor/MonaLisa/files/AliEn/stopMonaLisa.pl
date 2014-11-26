# Stopping script for ML
# v0.3

# Catalin.Cirstoiu@cern.ch
# 2006-07-27 - Changed the way vobox_mon.pl is stopped
# 2005-09-08 - first version

use strict;
use AliEn::Config;

my $config = new AliEn::Config({ "SILENT" => 1, "DEBUG" => 0 } );

$config or die("ERROR getting the configuration from LDAP!\n");

system("export CONFDIR=$config->{LOG_DIR}/MonaLisa ; $ENV{ALIEN_ROOT}/java/MonaLisa/Service/CMD/ML_SER stop");
system("rm -f $config->{LOG_DIR}/MonaLisa.pid");

# also stop the vobox_mon script
if(open(PS, "env COLUMNS=300 ps -eo 'pid,command' |")){
	while(my $line = <PS>){
		next if ! ($line =~ /vobox_mon.pl/ && $line =~ /perl/);
		my $pid = $1 if $line =~ /^\s*(\d+)/;
		chomp($pid);
		next if $pid == $$;
		print "Killing vobox_mon instance with PID=$pid\n";
		kill(15, $pid);
	}
	close(PS);
}

