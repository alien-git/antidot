# Stopping script for ML
# v0.3

# Catalin.Cirstoiu@cern.ch
# 08/09/2005

use strict;
use AliEn::Config;

my $config = new AliEn::Config({ "SILENT" => 1, "DEBUG" => 0 } );

$config or die("ERROR getting the configuration from LDAP!\n");

system("export CONFDIR=$config->{LOG_DIR}/MonaLisa ; $ENV{ALIEN_ROOT}/java/MonaLisa/Service/CMD/ML_SER stop");
system("rm -f $config->{LOG_DIR}/MonaLisa.pid");

# also stop the vobox_mon script
my $pidFile="$config->{LOG_DIR}/MonaLisa/vobox_mon.pid";
if(-e $pidFile){
        if(open(PIDFILE, $pidFile)){
                my $pid = <PIDFILE>;
                chomp $pid;
                kill 15, $pid;
        }else{
                die "Although it exists, could't read the vobox_mon pid file '$pidFile'.\n";
        }
}

