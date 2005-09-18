# Stopping script for ML
# v0.2

# Catalin.Cirstoiu@cern.ch
# 08/09/2005

use strict;
use AliEn::Config;

my $config = new AliEn::Config({ "SILENT" => 1, "DEBUG" => 0 } );

$config or die("ERROR getting the configuration from LDAP!\n");

system("export CONFDIR=$config->{LOG_DIR}/MonaLisa ; $ENV{ALIEN_ROOT}/java/MonaLisa/Service/CMD/ML_SER stop");
system("rm $config->{LOG_DIR}/MonaLisa.pid");

