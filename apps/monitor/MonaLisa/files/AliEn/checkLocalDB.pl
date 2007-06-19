#!/usr/bin/perl -w
# checkLocalDB.pl
# SB Feb 9, 2007

use strict;
use warnings;
use Switch;
use Getopt::Long;
use Time::Local;
use Data::Dumper;
use Net::LDAP;
use ApMon;

my $debug = '';   
my $verbose = '';
my $dumb = '';
my $statuscmd = 'edg-job-status';
my $path = "$ENV{HOME}/alien-logs/CE.db";
$path = "$ENV{ALIEN_LOGDIR}/CE.db" if ($ENV{ALIEN_LOGDIR});
my $AliEnCommand= "$ENV{VO_ALICE_SW_DIR}/alien/scripts/lcg/lcgAlien.sh";

my $skip = 0;
my $max = 9999999999;
my $last = 200;
my $loop = 1; #loop=0 means iterate forever
my $sleep = 120; #seconds

my $useVOView = ''; 
my $runThres = 300; #seconds

my $proxy = '';
my $BDII = '';
my $CE = ''; 

my $opt = new Getopt::Long::Parser;
$opt->getoptions ( 'debug|d'   => \$debug,     # Print some debugging info
                   'verbose|v' => \$verbose,   # Be VERY verbose
		   'dumb'      => \$dumb,      # Send nothing to ML, just print
                   'cmd=s'     => \$statuscmd, # Status command to use for LCG/gLite
		   'path|p=s'  => \$path,      # Path to the local DB
		   'skip=i'    => \$skip,      # Skip first n jobs in list
		   'max=i'     => \$max,       # Never check more than n jobs
		   'last=i'    => \$last,      # Check n jobs for LastLogged
		   'loop|l=i'  => \$loop,      # 0 = loop forever
		   'sleep|s=i' => \$sleep,     # Sleep n seconds between queries
		   'thres=i'   => \$runThres,  # Threshold for ShortRunning
		   'VOView'    => \$useVOView, # Use the VOView in IS (buggy in some sites)
		   'proxy=s'   => \$proxy,     # Proxy file to use
		   'CE=s'      => \$CE,        # CE to look at
		   'BDII=s'    => \$BDII,      # Top-level BDII
		  ) 
		   or die("Error parsing command line options\n");  
		   
$path = glob($path);
print "Site is $ENV{SITE_NAME}\n";

unless ($proxy) {
  my $command = "$AliEnCommand --printenv | grep X509_USER_PROXY | cut --d='='  -f2";
  $debug and print "DEBUG: doing $command\n";
  $proxy=`$command`; chomp $proxy;
  $proxy and $ENV{X509_USER_PROXY} = $proxy;
}
$proxy or die "Could not guess proxy and none given";
print "Proxy file if $proxy\n";

unless ($BDII) {
  $BDII = $ENV{LCG_GFAL_INFOSYS} if $ENV{LCG_GFAL_INFOSYS};
}
$BDII or die "\$LCG_GFAL_INFOSYS not set and no BDII given";
print "BDII is $BDII\n";

unless ($CE) {
  my $command = "$AliEnCommand --exec echo | grep \'LCGCE \'";
  $debug and print "DEBUG: doing $command\n";
  $CE = `$command`;
  $CE =~ s/\s//g;
  $CE =~ s/^.*=//;
  $CE =~ s/'//g;
}
$CE or die "Could not guess CE and none given";
print "CE is $CE\n";
(my $GRIS = $CE) =~ s/:.*$//;
$GRIS .= ":2135";
print "GRIS is $GRIS\n";

# VOView in some sites does not work. However, using the VOView is needed in sites where
# queues are shared among several VOs

if ($useVOView) {
  print "Will use VOView in IS (this is known not to work in some sites\n";
  $useVOView = "GlueVOViewLocalID=alice,";
} else {
  print "Will NOT use VOView in IS; please ignore messages like \'Size limit exceeded (4)\'\n";
}

my $apMon = '';
unless ($dumb) {
  my $ML_Dest = 'localhost';
  $ENV{MONALISA_HOST} and $ML_Dest = "$ENV{MONALISA_HOST}";
  $ML_Dest = "\'$ML_Dest\'";
  $apMon = new ApMon(0);
  $apMon->setLogLevel('WARNING');
  $apMon->setDestinations([$ML_Dest]);
}

my $iter = 0;
while ( !$loop || $iter < $loop ) {
  $iter++;
  
  ## Current DB
  my @joblist = getJobList("$path/JOBAGENT");
  print "Iteration $iter, from DB will check ".scalar @joblist." jobs\n";
  my $before = time;
  my ($summary, $averages) = getStatus(@joblist);
  my $elapsed = time - $before;
  print "Query took $elapsed seconds.\n";
  my @parameters = ("JA_LCGStatus", "LocalDB");
  foreach (keys %$summary) {
    $debug and print "DEBUG $_:\t$summary->{$_}\n";
    @parameters = (@parameters, "$_",$summary->{$_});
  }  
  print "Sending to ML: @parameters\n";
  $apMon->sendParameters(@parameters) unless $dumb;
  @parameters = ("JA_LCGStatus", "LocalDBTimings");
  foreach (keys %$averages) {
    $debug and print "DEBUG $_:\t$averages->{$_}\n";
    @parameters = (@parameters, "$_",$averages->{$_});
  }  
  print "Sending to ML: @parameters\n";
  $apMon->sendParameters(@parameters) unless $dumb;
  print "Sleeping $sleep seconds.\n" if $sleep;
  sleep $sleep;
  
  ## Last logged DB
  @joblist = getJobList("$path/JOBIDS");
  print "Iteration $iter, from log will check $last out of ".scalar @joblist." jobs\n";
  $before = time;
  (@joblist < $last) or @joblist = splice(@joblist,-$last);
  ($summary, $averages) = getStatus(@joblist);
  $elapsed = time - $before;
  print "Query took $elapsed seconds.\n";
  @parameters = ("JA_LCGStatus", "LastLogged");
  foreach (keys %$summary) {
    $debug and print "DEBUG $_:\t$summary->{$_}\n";
    @parameters = (@parameters, "$_",$summary->{$_});
  }  
  print "Sending to ML: @parameters\n";
  $apMon->sendParameters(@parameters) unless $dumb;
  @parameters = ("JA_LCGStatus", "LastLoggedTimings");
  foreach (keys %$averages) {
    $debug and print "DEBUG $_:\t$averages->{$_}\n";
    @parameters = (@parameters, "$_",$averages->{$_});
  }  
  print "Sending to ML: @parameters\n";
  $apMon->sendParameters(@parameters) unless $dumb;
  print "Sleeping $sleep seconds.\n";
  sleep $sleep;
  
  ## Some info from IS
  @parameters = ("JA_LCGStatus", "LocalGRIS");
  $summary = getSIInfo($GRIS, $useVOView."GlueCEUniqueID=$CE,mds-vo-name=local,o=grid");
  foreach (keys %$summary) {
    $debug and print "DEBUG $_:\t$summary->{$_}\n";
    @parameters = (@parameters, "$_",$summary->{$_});
  }  
  print "Sending to ML: @parameters\n";
  $apMon->sendParameters(@parameters) unless $dumb;
  
  @parameters = ("JA_LCGStatus", "BDII");
  $summary = getSIInfo($BDII, $useVOView."GlueCEUniqueID=$CE,mds-vo-name=$ENV{SITE_NAME},mds-vo-name=local,o=grid");
  foreach (keys %$summary) {
    $debug and print "DEBUG $_:\t$summary->{$_}\n";
    @parameters = (@parameters, "$_",$summary->{$_});
  }  
  print "Sending to ML: @parameters\n";
  $apMon->sendParameters(@parameters) unless $dumb;
} 

exit 0;

#
#--- We're done ------------------------------------
#

sub extractTime {
  my $string = shift;
  (undef, my $time) = split /:/,$string,2;
  $time =~ s/^\s+//;     
  ( $time eq '---' ) and return 0;
# $time = UnixDate(ParseDate($time),"%s");  
  my ( undef, $m, $d, $hrs, $min, $sec, $y ) = 
     ($time =~ /([A-Za-z]+)\s+([A-Za-z]+)\s+(\d+)\s+(\d+):(\d+):(\d+)\s+(\d+)/);
  $m = { Jan => 0, Feb => 1, Mar => 2, Apr => 3,
  	 May => 4, Jun => 5, Jul => 6, Aug => 7,
  	 Sep => 8, Oct => 9, Nov => 10, Dec => 11 }->{"$m"};
  $time = timelocal($sec,$min,$hrs,$d,$m,$y-1900);
  return $time;
}

sub getJobList {
  my $file = shift;
  my @joblist = ();
  my $count = 0;
  my $found = 0;
  open INPUT, "<$file";
  while (<INPUT>) {
    chomp;
    if (m/(https:\/\/[A-Za-z0-9.-]*:9000\/[A-Za-z0-9_-]{22})/ ) {
      $count++;
      next if ($count <= $skip);
      $found++;
      push @joblist, $1;
      last if (scalar @joblist == $max);
    }
  }
  close INPUT;
  return @joblist;
}

sub getStatus {
  my @joblist  = @_;
  my @output = `$statuscmd -v 2 @joblist`;
  my $status = '';
  my $JobId = '';
  my $time = '';
  my @result = ();
  my $newRecord = 1;
  my $summary = {};
  my $timings = {};
  my $averages = {};
  my $entries = {};
  foreach ( @output ) {
#    $debug and print;
    chomp;
    if (m/\*\*\*\*\*\*\*\*/) {
      if ($newRecord) { # First line of record, reset
	$status = '';
	$JobId  = '';
	$newRecord = 0;
	$timings = {};
      } else { # Last line of record, dump
	$time = extractTime("      Pippo\t: $time","      Pippo\t: $time");
	$verbose and print "$JobId is $status since $time\n";
	$summary->{$status}++;
        my $runTime = 0;
        $status eq 'Done(Success)' and $runTime = $timings->{'Done'}-$timings->{'Running'};
        $runTime and print "Runtime is $runTime sec.\n";
        $summary->{'ShortRunning'}++ if ($runTime && $runTime < $runThres);
	if ( $timings->{'Scheduled'} ) {
	  $averages->{'TimeToQueue'} += $timings->{'Scheduled'}-$timings->{'Submitted'};
	  $entries->{'TimeToQueue'}++;
	}
	if ( $status eq 'Waiting' ) {
	  my $elapsed = time-$timings->{'Waiting'};
	  $verbose and print "Job $JobId is still waiting since $elapsed sec!\n";
	  $averages->{'TimeWaiting'} += $elapsed;
	  $entries->{'TimeWaiting'}++;
	} elsif ( $status ne 'Aborted') {
	  my $elapsed = $timings->{'Ready'}-$timings->{'Waiting'};
	  if ($elapsed>0) { ### Otherwise it's meaningless (aborted job)
	    $averages->{'TimeWaiting'} += $elapsed;
	    $entries->{'TimeWaiting'}++;
	  }
	}
        $debug and print Dumper ($timings);
	$newRecord = 1;
      }
      next;
    } elsif ( m/Status info for the Job/ ) {
      (undef,$JobId) = split /:/,$_,2;  
      $JobId =~ s/\s//g; 
      next;
    } elsif ( m/Current Status/ ) {
      (undef,$status) = split /:/;
      $status =~ s/\s//g;     
      next;
    }  elsif ( m/reached on/ ){
      (undef,$time) = split /:/,$_,2;
      $time =~ s/^\s+//;     
      next;
    } else {
      my $line = $_;
      foreach (qw(Submitted Waiting Ready Scheduled Running Done Cleared Aborted Cancelled)) {
	if ( $line =~ m/^\s+$_\s+: / ) {
          my $t = extractTime($line);
	  $t and $timings->{$_} = $t;
          last;
	}
      }  
    }
  }
  $debug and print Dumper($summary);
  $entries->{$_} and $averages->{$_}/=$entries->{$_} foreach keys %$averages;
  return ($summary,$averages);
}  

sub getSIInfo {
  my $service = shift;
  my $DN = shift;
  my @command = "ldapsearch -LLL -x -z 1 -H ldap://$service -b $DN GlueCEStateWaitingJobs GlueCEStateRunningJobs";
  $debug and print "DEBUG: doing @command\n";
  my @grisLines =  `@command`;
  unless (@grisLines) {
    print STDERR "Got no answer from $service\n";
    return;
  }
  (my $grisWait) = grep(/GlueCEStateWaitingJobs/,@grisLines);
  (my $grisRun) = grep(/GlueCEStateRunningJobs/,@grisLines);
  chomp $grisWait;
  $grisWait =~ s/^GlueCEStateWaitingJobs: //;
  chomp $grisRun;
  $grisRun =~ s/^GlueCEStateRunningJobs: //;
  my $returnList = { Running => $grisRun, Scheduled => $grisWait};
  return $returnList;
}  
