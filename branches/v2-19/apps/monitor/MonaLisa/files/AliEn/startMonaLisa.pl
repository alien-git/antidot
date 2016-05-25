# Starting script for ML
# v0.3.9
# Catalin.Cirstoiu@cern.ch

# 01.12.2010 - adding a few modules available in 1.9.1
#            - moved crontab after ML start (overriding ML default crontab)
# 14/07/2008 - adding 2 new central services,PackManMaster and MessagesMaster
# 24/10/2007 - run the checkJAStatus script less often (once each 30 minutes)
#            - adding the ALIEN_*DIR (LOG, TMP, CACHE) directories to env for monitoring
# 10/10/2007 - do not filter env variables - just take all defined when starting ML
# 04/10/2007 - supporting several AliEn services with name like BaseService_SpecificName for logs monitoring
# 04/07/2007 - replacing checkLocalDB.pl with checkJAStatus.pl which also provides output for SAM
# 19/06/2007 - adding support for running the checkLocalDB.pl script from Stefano
# 11/06/2007 - supporting multiple admin (contact<email>) lines for a site
# 14/03/2007 - adding support for tail-ing AliEn Services log files
# 21/11/2006 - configuring >localhost => >fqdn for Master cluster
# 27/07/2006 - changed the way vobox_mon.pl is started
# 05/05/2006 - if site is LCG, then also monitor the lcg services status
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

# Start services that are supposed to be running
sub startAdditionalServices {
    my $farmHome = shift;
    my $mlHome = shift;

    # start vobox_mon.pl script - commented since it will be (re)started from ML.
#    system("env FARM_HOME=$farmHome $ENV{ALIEN_ROOT}/bin/alien-perl $mlHome/AliEn/vobox_mon.pl > $farmHome/vobox_mon.log 2>&1 &");
}

# Source the given file and import in my environment the given variables
sub getEnvVarsFromFile {
    my $file = shift;
    my @vars = @_;

    if(open(OUT, "(source $file ; for k in @vars ; ".'do echo "$k=${!k}"; done) 2>/dev/null |')){
	my $line;
	while($line = <OUT>){
	    if($line && $line =~ /\s*(.*)\s*=\s*(.*)\s*$/ && $2){
		$ENV{$1} = $2;
	    }
	}
	close(OUT);
    }else{
	print "Failed opening $file to get '@vars' variables. Using defaults...\n";
    }
}

# Get the list of services that have to run on this host and the path to their log files
# As a side effect, it adds to the environment the variables in $org/startup.conf
sub getAliEnServicesLogs {
    my $lcgSite = shift;
   
    getEnvVarsFromFile("$ENV{ALIEN_HOME}/etc/aliend/startup.conf", "ALIEN_ORGANISATIONS");
    $ENV{ALIEN_ORGANISATIONS} or $ENV{ALIEN_ORGANISATIONS} = "ALICE";
    my $srvConf  = "$ENV{ALIEN_HOME}/etc/aliend/$ENV{ALIEN_ORGANISATIONS}/startup.conf";
    my $csLogDir = "$ENV{ALIEN_HOME}/var/log/AliEn/$ENV{ALIEN_ORGANISATIONS}";
    my $ssLogDir = $config->{LOG_DIR};
    my @csList = qw(Proxy IS Authen Server Logger TransferManager Broker TransferBroker JobBroker TransferOptimizer JobOptimizer CatalogueOptimizer PackManMaster MessagesMaster SEManager JobInfoManager);
    my @ssList = qw(Monitor SE PackMan CE MonaLisa FTD httpd CMreport);
    
    my $serv2log = {
	"Proxy"		    => "ProxyServer",
	"Broker"	    => "Broker::Job",
	"JobBroker"	    => "Broker::Job",
	"TransferBroker"    => "Broker::Transfer",
	"Server"	    => "Manager::Job",
	"TransferManager"   => "Manager::Transfer",
	"TransferOptimizer" => "Optimizer::Transfer",
	"JobOptimizer"	    => "Optimizer::Job",
	"JobInfoManager"    => "Manager::JobInfo", 
	"SEManager" 		=> "Manager::SEMaster",
	"CatalogueOptimizer"=> "Optimizer::Catalogue",
	"Monitor"	    	=> "ClusterMonitor"
    };
    
    my $subLogs = {
	"Monitor"   => {
	    "subdir"	=> "ClusterMonitor",
	    "logs"	=> [qw(ProcInfo)]},
	"SE" => {
	    "subdir"    => ".",
	    "logs"      => [qw(xrootd.default)]},
	"JobOptimizer" => {
	    "subdir"	=> "JobOptimizer",
	    "logs"	=> [qw(Charge HeartBeat Inserting Merging Priority Saved Zombies Expired Hosts Killed MonALISA Resubmit Splitting)]},
	"CatalogueOptimizer" => {
	    "subdir"	=> "CatalogueOptimizer",
	    "logs"	=> [qw(Expired Packages Trigger)]
	}
    };
    
    getEnvVarsFromFile($srvConf, "AliEnCommand", "AliEnUserP", "AliEnLDAPP", "AliEnServices");
    $ENV{AliEnCommand} or $ENV{AliEnCommand} = ($lcgSite ? "$ENV{ALIEN_ROOT}/scripts/lcg/lcgAlien.sh" : "$ENV{ALIEN_ROOT}/bin/alien");
    $ENV{AliEnServices} or $ENV{AliEnServices} = "Monitor CE SE PackMan MonaLisa";
    
    my @crtSrvList = split(/\s+/, $ENV{AliEnServices});
    my $servicesLogs = {};
    for my $srv (@crtSrvList){
	my $basePath = "";
	if(grep($_ eq $srv, @csList)){
	    $basePath = $csLogDir;
	}elsif(grep($_ eq $srv || $srv =~ /^${_}_/, @ssList)){
	    $basePath = $ssLogDir;
	}else{
	    die("Trying to monitor logs for unknown service: '$srv' - nor central or site service!");
	}
	$servicesLogs->{$srv} = $basePath.'/'.($serv2log->{$srv} ? $serv2log->{$srv} : $srv).'.log';
	if($subLogs->{$srv}){
	    for my $subLog (@{$subLogs->{$srv}->{logs}}){
		$servicesLogs->{"${srv}_${subLog}"} = $basePath.'/'.$subLogs->{$srv}->{"subdir"}.'/'.$subLog.'.log';
	    }
	}
    }
    return $servicesLogs;
}


# Setup configuration files for MonaLisa
sub setupConfig {
    my $farmHome = shift;
    my $user = $ENV{USER} || $ENV{LOGNAME};
    my $mlHome = "$ENV{ALIEN_ROOT}/java/MonaLisa";
    my $logDir = $farmHome; # by default, the logs are stored in the farmHome directory
    my $lcgSite = 0;

#   system("rm -rf $farmHome 2>/dev/null; mkdir -p $farmHome");
    system("mkdir -p $farmHome");
    
    # ml_env
    my $farmName = ($config->{MONALISA_NAME} or die("MonaLisa configuration not found in LDAP. Not starting it...\n"));
    my $siteName = ($config->{SITE} or die("Site name not found in LDAP.\n"));
    if($farmName =~ /^LCG(.*)/){
        $farmName = $siteName.$1;
        $lcgSite = 1;
    }
 
    # get the list of AliEn services and the path to their log files
    my $servicesLogs = getAliEnServicesLogs($lcgSite);
    
    my $fqdn = $ENV{ALIEN_HOSTNAME} || Net::Domain::hostfqdn();
    $fqdn =~ s/\.$//;
    if($config->{MONALISA_HOST} && (lc($fqdn) ne lc($config->{MONALISA_HOST}))){
	die("MonaLisa hostname from LDAP config [".$config->{MONALISA_HOST}."] differs from local one [$fqdn]. Not starting it...\n");
    }
    my $shouldUpdate = ($config->{MONALISA_SHOULDUPDATE} or "true");
    my $javaOpts = ($config->{MONALISA_JAVAOPTS} or "-Xms256m -Xmx256m");
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
    # first, populate the environment with all known env variables
    for my $key (sort keys %ENV){
	if($key !~ /JAVA_HOME|JAVA_OPTS|FARM_NAME|MonaLisa_HOME|SHOULD_UPDATE|MONALISA_USER/){
		my $envValue = $ENV{$key};
		$envValue =~ s/'/\\'/g;
		push(@$add, "export $key=\'$envValue\'");
	}
    }
    getEnvVarsFromFile("$farmHome/ml_env", "URL_LIST_UPDATE");
    push(@$add, "export URL_LIST_UPDATE=$ENV{URL_LIST_UPDATE}");
    push(@$add, "export MonaLisa_HOME=$mlHome");
    push(@$add, "export FARM_HOME=$farmHome");
    push(@$add, "export ALIEN_LOGDIR=$config->{LOG_DIR}");
    push(@$add, "export ALIEN_TMPDIR=$config->{TMP_DIR}");
    push(@$add, "export ALIEN_CACHEDIR=$config->{CACHE_DIR}");
    push(@$add, "export LCG_SITE=\"".($lcgSite ? "/bin/true" : "/bin/false")."\"");
    setupFile("$mlHome/AliEn/site_env", "$farmHome/site_env", $changes, $add, $rmv);

    # Control/conf/transfer.conf
    my $transferConfFile = "$mlHome/Control/conf/transfer.conf";
    my $linkLines = `cat $transferConfFile | grep -v -E -e 'link.default|^\$'`;
    my $fdtBaseDir = `echo "$linkLines" | grep basedir | cut -d = -f 2`;
    system("(cd $farmHome ; mkdir -p $fdtBaseDir)");
    if(open(CONF, ">$transferConfFile")){
    	my $eth=`/sbin/route -n | grep -E -e "^0.0.0.0" | awk '{print \$8}'`;
   	print CONF "$linkLines
link.default.srcNode=$farmName
link.default.dstNode=Net
link.default.phys=$eth
";
	close(CONF);
    }# else, we don't complain.

    # myFarm.conf
    $add = ($config->{MONALISA_ADDMODULES_LIST} or []);
    $rmv = ($config->{MONALISA_REMOVEMODULES_LIST} or []);
   
    if($lcgSite){
    	# for LCG sites, also run this
	push(@$add, "#Status of the LCG services");
	push(@$add, '*LCGServicesStatus{monStatusCmd, localhost, "$ALIEN_ROOT/bin/alien -x $ALIEN_ROOT/java/MonaLisa/AliEn/lcg_vobox_services,timeout=800"}%900');
	
	push(@$add, "#JobAgent LCG Status - from Stefano - reports using ApMon; output of last run in checkJAStatus.log");
	push(@$add, '*JA_LCGStatus{monStatusCmd, localhost, "$ALIEN_ROOT/bin/alien -x $ALIEN_ROOT/scripts/lcg/checkJAStatus.pl -s 0 >checkJAStatus.log 2>&1,timeout=800"}%1800');
    }
    
    push(@$add, '*IPs{monIPAddresses, localhost, ""}%900');
    push(@$add, '*MonaLisa_MemInfo{MemInfo, localhost, ""}%60');
    push(@$add, '*MonaLisa_DiskDF{DiskDF, localhost, ""}%300');
    push(@$add, '*MonaLisa_SysInfo{SysInfo, localhost, ""}%900');
    push(@$add, '*MonaLisa_NetworkConfiguration{NetworkConfiguration, localhost, ""}%900');

    # setup the config for monitoring the log files of the configured services for this machine
    push(@$add, "#AliEn Services logs") if(keys(%$servicesLogs));
    for my $service (sort(keys(%$servicesLogs))){
	my $path = $servicesLogs->{$service};
	push(@$add, "^monLogTail{Cluster=AliEnServicesLogs,Node=$service,command=tail -n 15 -F $path 2>&1}%3");
    }
    
    $changes = {
    	"^>localhost" => ">$fqdn",
    };
    setupFile("$mlHome/AliEn/myFarm.conf", "$farmHome/myFarm.conf", $changes, $add, $rmv);
    
    # ml.properties
    my $group = ($config->{MONALISA_GROUP} or "alice");
    my $lus = ($config->{MONALISA_LUS} or "monalisa.cacr.caltech.edu,monalisa.cern.ch");
    my $location = ($config->{MONALISA_LOCATION} or $config->{SITE_LOCATION} or "");
    my $country = ($config->{MONALISA_COUNTRY} or $config->{SITE_COUNTRY} or "");
    my $long = ($config->{MONALISA_LONGITUDE} or $config->{SITE_LONGITUDE} or "N/A");
    my $lat = ($config->{MONALISA_LATITUDE} or $config->{SITE_LATITUDE} or "N/A");
    my $admin = ($config->{MONALISA_ADMINISTRATOR_LIST} or $config->{SITE_ADMINISTRATOR_LIST} or []);
    my @contact = ();
    my @email = ();
    for my $line (@$admin){
        if($line =~ /(.*)<(.*)>/){
	    my $contact = $1;
	    my $email = $2; 
	    $contact =~ s/^\s*//; $contact =~ s/\s*$//;
            push(@contact, $contact);
	    $email =~ s/\s+//g;
            push(@email, $email);
	}else{
	    $line =~ s/\s+//g;
            push(@email, $line);
	}
    }
    my $storeType = ($config->{MONALISA_STORETYPE} or "mem");
    $add = ($config->{MONALISA_ADDPROPERTIES_LIST} or []);
    
    # logging properties
    pushIfNoKey($add, "lia.Monitor.Farm.Conf.ConfVerifier.level=WARNING");
#    pushIfNoKey($add, "lia.Monitor.Filters.AliEnFilter.level=FINEST");

    # monXDRUDP properties
    pushIfNoKey($add, "lia.Monitor.modules.GenericUDPListener.SO_RCVBUF_SIZE=2097152");
    pushIfNoKey($add, "lia.Monitor.modules.monXDRUDP.MONITOR_SENDERS=true");
    pushIfNoKey($add, "lia.Monitor.modules.monXDRUDP.SENDER_EXPIRE_TIME=600");

    # AliEnFilter properties
    pushIfNoKey($add, "lia.Monitor.Store.FileLogger.maxDays=0");
    pushIfNoKey($add, "lia.Monitor.Filters.AliEnFilter=true");
    pushIfNoKey($add, "lia.Monitor.Filters.AliEnFilter.SLEEP_TIME=120");
    pushIfNoKey($add, "lia.Monitor.Filters.AliEnFilter.PARAM_EXPIRE=900");
    pushIfNoKey($add, "lia.Monitor.Filters.AliEnFilter.ZOMBIE_EXPIRE=14400");
    pushIfNoKey($add, "lia.Monitor.Filters.AliEnFilter.LDAP_QUERY_INTERVAL=7200");
    pushIfNoKey($add, "lia.Monitor.Filters.AliEnFilter.RUN_JOB_SYNC_SCRIPT=false");
    pushIfNoKey($add, "lia.Monitor.Filters.AliEnFilter.JOB_SYNC_RUN_INTERVAL=7200");
    pushIfNoKey($add, "lia.Monitor.Filters.AliEnFilter.JOB_SYNC_SCRIPT_TIMEOUT=1200");
    
    $rmv = ($config->{MONALISA_REMOVEPROPERTIES_LIST} or []);
    $changes = {
	"^MonaLisa.ContactName.*" => "MonaLisa.ContactName=".join(",", @contact),
	"^MonaLisa.ContactEmail.*" => "MonaLisa.ContactEmail=".join(",", @email),
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

    # db.conf.embedded
    setupFile("$mlHome/AliEn/db.conf.embedded", "$farmHome/db.conf.embedded", {}, [], []); 
 
    # from the @$add list, check if the user has changed the $logDir, i.e. the java.util.logging.FileHandler.pattern property
    my $logFile = getValueForKey($add, "java.util.logging.FileHandler.pattern");
    $logDir = $1 if (defined($logFile) && $logFile =~ /(.*)\/ML\%g.log/);
    return $logDir;
}

# Setup crontab (if possible) so that ML will check for updates
sub setupCrontab {
    my $farmHome = shift;
    
    my $ml_line = "0,5,10,15,20,25,30,35,40,45,50,55 * * * * /bin/sh -c 'export PATH=/bin:\$PATH ; export CONFDIR=$farmHome ; $ENV{ALIEN_ROOT}/java/MonaLisa/Service/CMD/CHECK_UPDATE'\n";
    my $lines = `env VISUAL=cat crontab -l | grep -v '/Service/CMD/CHECK_UPDATE' | grep -v '/Service/CMD/ML_SER'`;
    if(open(CRON, "| crontab -")){
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
my $logDir = setupConfig($farmHome);
#print "Starting ML...\n";

# Start ML
my $r = system("export CONFDIR=$farmHome ; $ENV{ALIEN_ROOT}/java/MonaLisa/Service/CMD/ML_SER start");
system("ln -sf $farmHome/.ml.pid $config->{LOG_DIR}/MonaLisa.pid");
system("ln -sf $logDir/ML0.log $config->{LOG_DIR}/MonaLisa.log");

setupCrontab($farmHome);

startAdditionalServices($farmHome, "$ENV{ALIEN_ROOT}/java/MonaLisa");

exit $r;
