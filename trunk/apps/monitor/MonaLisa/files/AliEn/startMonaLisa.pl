# Starting script for ML
# v0.3.0
# Catalin.Cirstoiu@cern.ch

# 08/09/2005 - search for java in $JAVA_HOME or path if not found in default location
#            - install ml_env and site_env in $LOG_DIR to be sure we can write them
# 03/08/2005 - added an expiry timeout for zombie jobs in ml.properties
# 19/07/2005 - try to add a crontab entry to check for updates
# 18/07/2005 - added AliEnFilter configuration to ml.properties
# 21/06/2005 - check if MONALISA_HOST from LDAP config == hostname -f
# 14/06/2005 - first useful release

use strict;
use AliEn::Config;

my $config = new AliEn::Config({ "SILENT" => 1, "DEBUG" => 0 } );

$config or die("ERROR getting the configuration from LDAP!\n");

my $javaHome = "$ENV{ALIEN_ROOT}/java/MonaLisa/java";
if(! -f "$javaHome/bin/java"){
	$javaHome = $ENV{JAVA_HOME};
	if( ! ( $javaHome && (-f "$javaHome/bin/java") ) ){
		my $javaPath = `which java`;
		chomp($javaPath);
		$javaHome = $1 if ($javaPath =~ /(.*)\/bin\/java$/);
	}
}

( -f "$javaHome/bin/java" ) or die("ERROR Cannot find Java in $ENV{ALIEN_ROOT}/java/MonaLisa/java, \$JAVA_HOME or in path. Please install Java!\n");

( -f "$ENV{ALIEN_ROOT}/java/MonaLisa/Service/CMD/ML_SER" ) or die("ERROR MonaLisa is not installed!\n");

# Dump the ML configuration that was read from LDAP
sub dumpConfig {
    print "Configuration for the MonaLisa service:\n";
    for my $key (sort(keys %$config)){
	#next if(!($key =~ /^MONALISA/));
	if("".ref($config->{$key})."" eq "ARRAY"){
	    my $i=0;
	    for my $val (@{$config->{$key}}){
		print "$key\[".($i++)."\] = $val\n";
	    }
	}else{
	    print "$key = $config->{$key}\n";
	}
    }
}

# Dump all ENV values
sub dumpENV {
    for my $key (sort(keys %ENV)){
	print "$key = $ENV{$key}\n";
    }
}

# Create the destFile starting from the given srcFile by:
# - removing the given lines
# - applying the changes in the given array
# - adding the given lines at the end of the file
sub setupFile {
    my $srcFile = shift;
    my $destFile = shift;
    my $changes = shift;
    my $addLines = shift;
    my $removeLines = shift;

    if(open(SRC, "<$srcFile")){
	# make a backup of the destination file, if it exists
	system("cp -f $destFile $destFile.orig") if( -f $destFile );
	if(open(DEST, ">$destFile")){
	    my $line;
	  CONF: while($line = <SRC>){
	      chomp $line;
	      for my $rmv (@$removeLines){
		  next CONF if $line =~ /^$rmv$/;
	      }
	      for my $key (keys %$changes){
		  last if($line =~ s/$key/$changes->{$key}/);
	      }
	      print DEST "$line\n";
	  }
	    for $line (@$addLines){
		print DEST "$line\n";
	    }
	    close DEST;
	}else{
	    die("Cannot open $destFile for writing!\n");
	}
	close SRC;
    }else{
	die("Cannot open $srcFile for reading original configuration!\n");
    }
}

# Setup configuration files for MonaLisa
sub setupConfig {
    my $user = $ENV{USER} || $ENV{LOGNAME};
    my $mlHome = "$ENV{ALIEN_ROOT}/java/MonaLisa";
    my $farmHome = "$config->{LOG_DIR}/MonaLisa";

    system("rm -rf $farmHome; mkdir -p $farmHome");
    
    # db.conf.embedded
    setupFile("$mlHome/AliEn/db.conf.embedded", "$farmHome/db.conf.embedded", {}, [], []); 
 
    # ml_env
    my $farmName = ($config->{MONALISA_NAME} or die("MonaLisa configuration not found in LDAP. Not starting it...\n"));
    my $fqdn = `hostname -f`;
    chomp $fqdn;
    if($config->{MONALISA_HOST} && ($fqdn ne $config->{MONALISA_HOST})){
	die("MonaLisa hostname from LDAP config [".$config->{MONALISA_HOST}."] differs from local one [$fqdn]. Not starting it...\n");
    }
    my $shouldUpdate = ($config->{MONALISA_SHOULDUPDATE} or "false");
    my $javaOpts = ($config->{MONALISA_JAVAOPTS} or "");
    my $add = [];
    my $rmv = [];
    my $changes = {
	"^#?MONALISA_USER=.*" => "MONALISA_USER=\"$user\"",
	"^JAVA_HOME=.*" => "JAVA_HOME=\"$javaHome\"",
	"^SHOULD_UPDATE=.*" => "SHOULD_UPDATE=\"$shouldUpdate\"",
	"^MonaLisa_HOME=.*" => "MonaLisa_HOME=\"$mlHome\"",
	"^FARM_HOME=.*" => "FARM_HOME=\"$farmHome\"",
	"^#?FARM_NAME=.*" => "FARM_NAME=\"$farmName\"",
	"^#?JAVA_OPTS=.*" => "JAVA_OPTS=\"$javaOpts\""};
    setupFile("$mlHome/AliEn/ml_env", "$farmHome/ml_env", $changes, $add, $rmv);

    # site_env
    $add = [];
    $rmv = [];
    $changes = {};
    setupFile("$mlHome/AliEn/site_env", "$farmHome/site_env", $changes, $add, $rmv);

    # myFarm.conf
    $add = ($config->{MONALISA_ADDMODULES_LIST} or []);
    $rmv = ($config->{MONALISA_REMOVEMODULES_LIST} or []);
    $changes = {};
    setupFile("$mlHome/AliEn/myFarm.conf", "$farmHome/myFarm.conf", $changes, $add, $rmv);
    
    # ml.properties
    my $group = ($config->{MONALISA_GROUP} or "alice");
    my $lus = ($config->{MONALISA_LUS} or "monalisa.cacr.caltech.edu,monalisa.cern.ch");
    my $location = ($config->{SITE_LOCATION} or "");
    my $country = ($config->{SITE_COUNTRY} or "");
    my $long = ($config->{SITE_LONGITUDE} or "N/A");
    my $lat = ($config->{SITE_LATITUDE} or "N/A");
    my $admin = ($config->{SITE_ADMINISTRATOR} or "");
    my $email = "";
    if($admin =~ /(.*)<(.*)>/){
	$admin = $1;
	$email = $2;
	$admin =~ s/\s+$//;
    }
    my $storeType = ($config->{MONALISA_STORETYPE} or "mem");
    $add = ($config->{MONALISA_ADDPROPERTIES_LIST} or []);
    push(@$add, "lia.Monitor.Store.FileLogger.maxDays=0");
    push(@$add, "lia.Monitor.Filters.AliEnFilter=true");
    push(@$add, "lia.Monitor.Filters.AliEnFilter.SLEEP_TIME=120");
    push(@$add, "lia.Monitor.Filters.AliEnFilter.PARAM_EXPIRE=300");
    push(@$add, "lia.Monitor.Filters.AliEnFilter.ZOMBIE_EXPIRE=7200");
    push(@$add, "lia.Monitor.Filters.AliEnFilter.LDAP_QUERY_INTERVAL=7200");
    
    $rmv = ($config->{MONALISA_REMOVEPROPERTIES_LIST} or []);
    $changes = {
	"^MonaLisa.ContactName.*" => "MonaLisa.ContactName=$admin",
	"^MonaLisa.ContactEmail.*" => "MonaLisa.ContactEmail=$email",
	"^MonaLisa.Location.*" => "MonaLisa.Location=$location",
	"^MonaLisa.Country.*" => "MonaLisa.Country=$country",
	"^MonaLisa.LAT.*" => "MonaLisa.LAT=$lat",
	"^MonaLisa.LONG.*" => "MonaLisa.LONG=$long",
	"^lia.Monitor.LUSs.*" => "lia.Monitor.LUSs=$lus",
	"^lia.Monitor.group.*" => "lia.Monitor.group=$group",
    };
    if($storeType =~ /mem.*/){
	$changes->{"^lia.Monitor.Store.TransparentStoreFast.web_writes.*"} = "lia.Monitor.Store.TransparentStoreFast.web_writes=0";
	$changes->{"^lia.Monitor.use_emysqldb.*"} = "lia.Monitor.use_emysqldb=false";
	$changes->{"^lia.Monitor.use_epgsqldb.*"} = "lia.Monitor.use_epgsqldb=false";
	push(@$add, "lia.Monitor.memory_store_only=true");
	push(@$rmv, "lia.Monitor.jdbcDriverString\\s*=\\s*com.mckoi.JDBCDriver");
	push(@$rmv, "lia.Monitor.jdbcDriverString\\s*=\\s*com.mysql.jdbc.Driver");
    }elsif($storeType =~ /mysql/){
	$changes->{"^lia.Monitor.Store.TransparentStoreFast.web_writes.*"} = "lia.Monitor.Store.TransparentStoreFast.web_writes=3";
	$changes->{"^#?\\s*lia.Monitor.use_emysqldb.*"} = "lia.Monitor.use_emysqldb=true";
	$changes->{"^lia.Monitor.use_epgsqldb.*"} = "lia.Monitor.use_epgsqldb=false";
	push(@$rmv, "lia.Monitor.memory_store_only\\s*=\\s*true");
	push(@$rmv, "lia.Monitor.jdbcDriverString\\s*=\\s*com.mckoi.JDBCDriver");
	push(@$rmv, "lia.Monitor.jdbcDriverString\\s*=\\s*com.mysql.jdbc.Driver");
    }elsif($storeType =~ /pgsql/){
	$changes->{"^lia.Monitor.Store.TransparentStoreFast.web_writes.*"} = "lia.Monitor.Store.TransparentStoreFast.web_writes=3";
	$changes->{"^#?\\s*lia.Monitor.use_epgsqldb.*"} = "lia.Monitor.use_epgsqldb=true";
	$changes->{"^lia.Monitor.use_emysqldb.*"} = "lia.Monitor.use_emysqldb=false";
	push(@$rmv, "lia.Monitor.memory_store_only\\s*=\\s*true");
	push(@$rmv, "lia.Monitor.jdbcDriverString\\s*=\\s*com.mckoi.JDBCDriver");
	push(@$rmv, "lia.Monitor.jdbcDriverString\\s*=\\s*com.mysql.jdbc.Driver");
    }
    setupFile("$mlHome/AliEn/ml.properties", "$farmHome/ml.properties", $changes, $add, $rmv);
}

# Setup crontab (if possible) so that ML will check for updates
sub setupCrontab {
    my $ml_line = "*/20 * * * * $ENV{ALIEN_ROOT}/java/MonaLisa/Service/CMD/CHECK_UPDATE";
    my $lines = `env VISUAL=cat crontab -e 2>/dev/null | grep -v '/Service/CMD/CHECK_UPDATE'`;
    if(open(CRON, "| crontab - &>/dev/null")){
	print CRON $lines;
	print CRON $ml_line;
	close(CRON);
    }
}

#print "------------------------\n";
#dumpENV();
#print "========================\n";
#dumpConfig();
#print "Setting up ML config...\n";
setupConfig();
setupCrontab();
#print "Starting ML...\n";

# Start ML
my $mlLogDir = "$config->{LOG_DIR}/MonaLisa";
my $r = system("export CONFDIR=$mlLogDir ; $ENV{ALIEN_ROOT}/java/MonaLisa/Service/CMD/ML_SER start");
system("ln -sf $mlLogDir/.ml.pid $config->{LOG_DIR}/MonaLisa.pid");
system("ln -sf $mlLogDir/ML0.log $config->{LOG_DIR}/MonaLisa.log");

exit $r;

