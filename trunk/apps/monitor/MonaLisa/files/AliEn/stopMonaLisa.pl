# Stopping script for ML
# v0.1
# Catalin.Cirstoiu@cern.ch
# 14/06/2005

use strict;
use AliEn::Config;

my $config = new AliEn::Config({ "SILENT" => 1, "DEBUG" => 0 } );

$config or die("ERROR getting the configuration from LDAP!\n");

system("$ENV{ALIEN_ROOT}/java/MonaLisa/Service/CMD/ML_SER stop 1>/dev/null 2>&1");
system("rm $config->{LOG_DIR}/MonaLisa.pid");

