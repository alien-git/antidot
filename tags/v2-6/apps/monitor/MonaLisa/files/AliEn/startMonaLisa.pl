# Starting script for ML
# v0.3.2
# Catalin.Cirstoiu@cern.ch

# 13/12/2005 - added support for vobox_mon.pl to monitor the vo-box
# 02/11/2005 - don't be so sure that most ENV variables exist (like ALIEN_LDAP_DN)
# 23/10/2005 - take into account the location settings from the ML LDAP config
# 08/09/2005 - search for java in $JAVA_HOME or path if not found in default location
#            - install ml_env and site_env in $LOG_DIR to be sure we can write them
# 03/08/2005 - added an expiry timeout for zombie jobs in ml.properties
# 19/07/2005 - try to add a crontab entry to check for updates
# 18/07/2005 - added AliEnFilter configuration to ml.properties
# 21/06/2005 - check if MONALISA_HOST from LDAP config == hostname
# 14/06/2005 - first useful release

use strict;
use AliEn::Config;
use Net::Domain;


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

# returns either undef either the value of the requested key of the 'key=value' pair from the given @$arrRef
sub getValueForKey {
    my $arrRef = shift;
    my $key = shift;
    
    for my $other (@$arrRef){
	return $1 if ($other =~ /^$key\s*=\s*(.*)$/);
    }
    return undef;
}

# The what is something like w_key=w_val
# This function adds the 'what' to the end of @$arrRef if the w_key isn't already in the @$arrRef
# The typical use of this is to set some default value for a property if the user hasn't already given one
sub pushIfNoKey {
    my $arrRef = shift;
    my $what = shift;

    my ($w_key, $w_val) = split(/\s*=\s*/, $what);    
    my $prev_val = getValueForKey($arrRef, $w_key);
    push(@$arrRef, $what) if(! defined($prev_val)) ;
}

# Stop services that are already running
sub stopRunningServices {
    my $farmHome = shift;

    # stop vobox_mon.pl script
    my $pidFile="$farmHome/vobox_mon.pid";
    if(-e $pidFile){
	if(open(PIDFILE, $pidFile)){
	    my $pid = <PIDFILE>;
	    chomp $pid;
	    kill 15, $pid;
	}else{
	    die "Although it exists, could't read the vobox_mon pid file '$pidFile'.\n";
	}
    }
}

# Setup configuration files for MonaLisa
sub setupConfig {
    my $farmHome = shift;
    my $user = $ENV{USER} || $ENV{LOGNAME};
    my $mlHome = "$ENV{ALIEN_ROOT}/java/MonaLisa";
    my $logDir = $farmHome; # by default, the logs are stored in the farmHome directory

    system("rm -rf $farmHome; mkdir -p $farmHome");
    
    # db.conf.embedded
    setupFile("$mlHome/AliEn/db.conf.embedded", "$farmHome/db.conf.embedded", {}, [], []); 
 
    # ml_env
    my $farmName = ($config->{MONALISA_NAME} or die("MonaLisa configuration not found in LDAP. Not starting it...\n"));
    my $fqdn = Net::Domain::hostfqdn();
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
    push(@$add, "export ALIEN_ROOT=$ENV{ALIEN_ROOT}") if $ENV{ALIEN_ROOT};
    push(@$add, "export ALIEN_ORGANISATION=$ENV{ALIEN_ORGANISATION}") if $ENV{ALIEN_ORGANISATION};
    push(@$add, "export ALIEN_LDAP_DN=$ENV{ALIEN_LDAP_DN}") if $ENV{ALIEN_LDAP_DN};
    push(@$add, "export ALIEN_HOSTNAME=$ENV{ALIEN_HOSTNAME}") if $ENV{ALIEN_HOSTNAME};
    push(@$add, "export FARM_HOME=$farmHome");
    push(@$add, "$ENV{ALIEN_ROOT}/bin/alien-perl $mlHome/AliEn/vobox_mon.pl >$farmHome/vobox_mon.log 2>&1 &");
    setupFile("$mlHome/AliEn/site_env", "$farmHome/site_env", $changes, $add, $rmv);

    # myFarm.conf
    $add = ($config->{MONALISA_ADDMODULES_LIST} or []);
    $rmv = ($config->{MONALISA_REMOVEMODULES_LIST} or []);
    $changes = {};
    setupFile("$mlHome/AliEn/myFarm.conf", "$farmHome/myFarm.conf", $changes, $add, $rmv);
    
    # ml.properties
    my $group = ($config->{MONALISA_GROUP} or "alice");
    my $lus = ($config->{MONALISA_LUS} or "monalisa.cacr.caltech.edu,monalisa.cern.ch");
    my $location = ($config->{MONALISA_LOCATION} or $config->{SITE_LOCATION} or "");
    my $country = ($config->{MONALISA_COUNTRY} or $config->{SITE_COUNTRY} or "");
    my $long = ($config->{MONALISA_LONGITUDE} or $config->{SITE_LONGITUDE} or "N/A");
    my $lat = ($config->{MONALISA_LATITUDE} or $config->{SITE_LATITUDE} or "N/A");
    my $admin = ($config->{MONALISA_ADMINISTRATOR} or $config->{SITE_ADMINISTRATOR} or "");
    my $email = "";
    if($admin =~ /(.*)<(.*)>/){
	$admin = $1;
	$email = $2;
	$admin =~ s/\s+$//;
    }
    my $storeType = ($config->{MONALISA_STORETYPE} or "mem");
    $add = ($config->{MONALISA_ADDPROPERTIES_LIST} or []);
    pushIfNoKey($add, "lia.Monitor.Store.FileLogger.maxDays=0");
    pushIfNoKey($add, "lia.Monitor.Filters.AliEnFilter=true");
    pushIfNoKey($add, "lia.Monitor.Filters.AliEnFilter.SLEEP_TIME=120");
    pushIfNoKey($add, "lia.Monitor.Filters.AliEnFilter.PARAM_EXPIRE=900");
    pushIfNoKey($add, "lia.Monitor.Filters.AliEnFilter.ZOMBIE_EXPIRE=14400");
    pushIfNoKey($add, "lia.Monitor.Filters.AliEnFilter.LDAP_QUERY_INTERVAL=7200");
#    pushIfNoKey($add, "lia.Monitor.Filters.AliEnFilter.level=FINEST");
    
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
    # from the @$add list, check if the user has changed the $logDir, i.e. the java.util.logging.FileHandler.pattern property
    my $logFile = getValueForKey($add, "java.util.logging.FileHandler.pattern");
    $logDir = $1 if (defined($logFile) && $logFile =~ /(.*)\/ML\%g.log/);
    return $logDir;
}

# Setup crontab (if possible) so that ML will check for updates
sub setupCrontab {
    my $farmHome = shift;
    
    my $ml_line = "0,20,40 * * * * /bin/sh -c 'export PATH=/bin:\$PATH ; export CONFDIR=$farmHome ; $ENV{ALIEN_ROOT}/java/MonaLisa/Service/CMD/CHECK_UPDATE'";
    my $lines = `env VISUAL=cat crontab -e 2>/dev/null | grep -v '/Service/CMD/CHECK_UPDATE'`;
    if(open(CRON, "| crontab - &>/dev/null")){
	print CRON $lines;
	print CRON $ml_line;
	close(CRON);
    }else{
	print "Couldn't install ML in crontab. Please try to add manually the following line:\n$ml_line\n\n";
    }
}

#print "------------------------\n";
#dumpENV();
#print "========================\n";
#dumpConfig();
#print "Setting up ML config...\n";
my $farmHome = "$config->{LOG_DIR}/MonaLisa";
stopRunningServices($farmHome);
my $logDir = setupConfig($farmHome);
setupCrontab($farmHome);
#print "Starting ML...\n";

# Start ML
my $r = system("export CONFDIR=$farmHome ; $ENV{ALIEN_ROOT}/java/MonaLisa/Service/CMD/ML_SER start");
system("ln -sf $farmHome/.ml.pid $config->{LOG_DIR}/MonaLisa.pid");
system("ln -sf $logDir/ML0.log $config->{LOG_DIR}/MonaLisa.log");

exit $r;

