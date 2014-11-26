# getAliEnFilterConf.pl
#
# Get the ML components configuration from AliEn LDAP
# This is currently called from AliEnFilter to get the list
# of Sites with corresponding domains, Storage Elements (running xrootd).
# and max_jobs for each defined CE.
#
# Catalin Cirstoiu <Catalin.Cirstoiu@cern.ch>
# Version 0.7
#
# 28/09/2007 - support CE on the same machine with a ML, but which is seen as contributing
#              to jobs for another ML. In order for this to fully work, apmonConfig property
#              must be also configured to point to the other ML
# 10/02/2006 - support multiple MLs for a site
#            - the conf retrieval was rewritten to be more flexible and less hacky
# 18/01/2006 - added the mapping between CE host names and the corresponding Sites (ML names).
#              The idea is to be able to identify the site based on the CE host.
# 13/12/2005 - don't report sites that end in '-L'. Just remove the '-L' and combine the
#              corresponding domains with the domains from the site without '-L', if exists.
# 01/12/2005 - if site name's differs from ML name's, use the ML name as the site name.
#              This way the ML AlienFilter should be able to identify traffic of local
#              private IPs as belonging to the current site.
# 03/11/2005 - for LCG sites' domain use the domain's entry form the ML properties page.
#              Also, the domains defined on ML prop page are added to the site domains
# 02/11/2005 - if $ALIEN_LDAP_DN is not defined, based on the current $ALIEN_ORGANISATION
#              take the ALIEN_LDAP_DN from the central AliEn LDAP
# 24/10/2005 - get CE's max jobs for all CEs
#            - for LCG domains, get the domain form SEs hosts
#            - report only once a site, if it has both standalone and LCG AliEns
# 13/09/2005 - initial version; gets SEs and Sites domains

use strict;
use warnings;

use Carp;
use Net::LDAP;
use Net::Domain;

my $TESTING=0;  # Set to 0 to take the ENV variables; set to 1 to go to central LDAP

my $ORG    = lc($ENV{ALIEN_ORGANISATION} || "Alice");  #in lowercase;
my $LDAPDN = getLDAP_DN() || "aliendb06a.cern.ch:8389/o=$ORG,dc=cern,dc=ch";
my $HOST   = shift || $ENV{ALIEN_HOSTNAME} || $ENV{HOSTNAME} || $ENV{HOST};

if($TESTING){
	$ORG    = lc("Alice");  #in lowercase;
	$LDAPDN = "aliendb06a.cern.ch:8389/o=$ORG,dc=cern,dc=ch";
	$HOST   = shift || $ENV{ALIEN_HOSTNAME} || $ENV{HOSTNAME} || $ENV{HOST};
}

my $DEFAULT_APMON_CONFIG = "aliendb06a.cern.ch";
my $verbose = 0;  # print the values on screen.

my ($sites_domains, $ses_hosts, $ces_max_jobs, $sites_ce_hosts) = getSitesAndDomains();

#sleep(1);
dumpConf("Sites_domains", $sites_domains);
print "AliEn2-TEST-pcardaab = >CERN\n" if $TESTING;
#sleep(1);
dumpConf("SEs_hosts", $ses_hosts);
#sleep(1);
dumpConf("CEs_max_jobs", $ces_max_jobs);
#sleep(1);
dumpConf("Sites_CE_hosts", $sites_ce_hosts);
# return 3 hashes:
# - farm-names -> domains
# - SE-names -> hosts
# - CE-names -> max_jobs
sub getSitesAndDomains {
	
	my ($ldap_host, $ldap_dn) = split("/", $LDAPDN);
	my $ldap = Net::LDAP->new($ldap_host) or die "$@";
	$ldap->bind;
	
	my $sites_domains = {};
	my $lcg_domains = {};
	my $ses_hosts = {};
	my $ces_max_jobs = {};
	my $sites_ce_hosts = {};
	my $mesg = $ldap->search(base   => "ou=Sites,$ldap_dn",
				 filter => "objectClass=AliEnSite");
	my $total = $mesg->count;
	if(! $total){
		print "#There are no sites in $ORG\n" if $TESTING;
	}
	# Get all defined Sites
	foreach my $site_entry ($mesg->entries){
		my $site_name = $site_entry->get_value("ou") or next;
		my @site_doms = $site_entry->get_value("domain");
		my $fullLDAPdn = "ou=$site_name,ou=Sites,$ldap_dn";

#		print "SITE $site_name\n";
		next if $site_name eq "LCG";
		# Get ML services defined for this Site
		$mesg = $ldap->search(base   => "ou=MonaLisa,ou=Services,$fullLDAPdn",
				     filter => "objectClass=AliEnMonaLisa");
		my $ml_count = $mesg->count();
		my $ml_default; # default ML for the site
		my $local_mls = {};
		if($ml_count == 0){
			$local_mls->{$site_name}->{DOMAINS} = \@site_doms;
			$ml_default = $site_name;
		}
		foreach my $ml_entry ($mesg->entries){
			my $ml_name = $ml_entry->get_value("name");
			$ml_name = ($ml_name =~ /^LCG(.*)/ ? $site_name.$1 : $ml_name);
			my $ml_host = $ml_entry->get_value("host");
			my @ml_doms = $ml_entry->get_value("domain");
			push(@ml_doms, @site_doms) if($ml_count == 1); # if site has more MLs, take in account only properties from ML pages
			$local_mls->{$ml_name}->{DOMAINS} = \@ml_doms;
			my @add_props = $ml_entry->get_value("addProperties");
			$local_mls->{$ml_name}->{ADD_PROPERTIES} = \@add_props;
#			print "properties: @add_props\n" if @add_props;
			$ml_default = $ml_name if ! defined($ml_default);
		}
		# report domains
		for my $ml_name (keys %{$local_mls}){
			$sites_domains->{$ml_name} = [] if ! defined($sites_domains->{$ml_name});
			for my $dom (@{$local_mls->{$ml_name}->{DOMAINS}}){
				push(@{$sites_domains->{$ml_name}}, $dom) if ! contains($dom, @{$sites_domains->{$ml_name}});
			}
#			print "DOM $ml_name -> @{$sites_domains->{$ml_name}}\n";
		}
#		print "ML_default -> $ml_default\n";

		# Get the SEs defined in this site - we need their hostnames
		$mesg = $ldap->search(base   => "ou=SE,ou=Services,$fullLDAPdn",
					filter => "(|(objectClass=AliEnMSS)(objectClass=AliEnSE))");
		foreach my $se_entry ($mesg->entries){
			my $se_name = $se_entry->get_value("name") or next;
			my $se_fullName = ucfirst($ORG)."::".$site_name."::".$se_name;
			my @se_hosts = ();
			my $se_host = $se_entry->get_value("host");
			push(@se_hosts, $se_host) if $se_host;
			my $io_daemons = $se_entry->get_value("ioDaemons");
			if($io_daemons){
				my @iod_values = split(":", $io_daemons);
				for my $val (@iod_values){
					push(@se_hosts, $1) if($val =~ /olb_host=(.*)/);
				}
			}
#			print "SE_Name: $se_name\nSE_Hosts: @se_hosts\n" if $TESTING;
			$ses_hosts->{$se_fullName} = \@se_hosts;  # report directly
		}
		
#		print "QCE ==> ou=CE,ou=Services,$fullLDAPdn\n";
		# Get the CEs defined in this site - we need maxjobs and hostnames
		$mesg = $ldap->search(base   => "ou=CE,ou=Services,$fullLDAPdn",
				      filter => "objectClass=AliEnCE");
		my $ce_default; # default CE for the site
		my $local_ces = {};
		foreach my $ce_entry ($mesg->entries){
			my $ce_name = $ce_entry->get_value("name");
			my $ce_fullName = ucfirst($ORG)."::".$site_name."::".$ce_name;
			my $max_jobs = $ce_entry->get_value("maxjobs");
			my @ce_hosts = $ce_entry->get_value("host");
			$local_ces->{$ce_name}->{HOSTS} = \@ce_hosts;
#			print "CE $ce_fullName -> @ce_hosts\n";
			$ce_default = $ce_name if ! defined($ce_default);
			$ces_max_jobs->{$ce_fullName} = [$max_jobs]; # report directly
		}
		
#		print "CE_default -> ".($ce_default || "")."\n";
		
		# Get Config for different hosts in this site, to discover associations between MLs and CEs, etc.
		$mesg = $ldap->search(base   => "ou=Config,$fullLDAPdn",
				     filter => "objectClass=AliEnHostConfig");
		my $conf_count = $mesg->count();
		if($conf_count == 0){
			$sites_ce_hosts->{$ml_default} = [] if ! $sites_ce_hosts->{$ml_default};
			for my $ce_n (keys %{$local_ces}){
				for my $ce_h (@{$local_ces->{$ce_n}->{HOSTS}}){
					push(@{$sites_ce_hosts->{$ml_default}}, $ce_h) if ! contains($ce_h, @{$sites_ce_hosts->{$ml_default}});
				}
			}
		}
		# make the correlations CE <-> ML
		foreach my $conf_entry ($mesg->entries){
			my $ce_name = $conf_entry->get_value("ce") || $ce_default;
			my $ml_name = $conf_entry->get_value("monalisa") || $ml_default;
			$ml_name = ($ml_name =~ /^LCG(.*)/ ? $site_name.$1 : $ml_name);
			next if (! $ce_name) || (! $local_ces->{$ce_name});
			$sites_ce_hosts->{$ml_name} = [] if ! $sites_ce_hosts->{$ml_name};
			for my $prop (@{$local_mls->{$ml_name}->{ADD_PROPERTIES}}){
				if($prop =~ /\#CE for (.*)/){
#					print "CE $ce_name reports to $1 instead of $ml_name\n";
					$ml_name = $1;
					last;
				}
			}
#			print "For host ".$conf_entry->get_value("host")." ML $ml_name --CE--> @{$local_ces->{$ce_name}->{HOSTS}}\n";
			for my $ce_h (@{$local_ces->{$ce_name}->{HOSTS}}){
				push(@{$sites_ce_hosts->{$ml_name}}, $ce_h) if ! contains($ce_h, @{$sites_ce_hosts->{$ml_name}});
			}
#			print "CEs $ml_name -> @{$sites_ce_hosts->{$ml_name}}\n";
		}
	}
	
	if($TESTING){
		$ces_max_jobs->{"pcardaab::CERN::testCE"} = [6];
		$ces_max_jobs->{"alienbuild::CERN::testCE"} = [6];
		$ces_max_jobs->{"oplapro12::CERN::testCE"} = [6];
		$ces_max_jobs->{"alimacx08::CERN::testCE"} = [6];
		$ces_max_jobs->{"pcalibuildamd::CERN::testCE"} = [6];
		$ces_max_jobs->{"lxb2075::CERN::testCE"} = [6];

		$sites_ce_hosts->{"AliEn2-TEST-pcardaab"} = ['pcardaab.cern.ch'];
		$sites_ce_hosts->{"AliEn2-TEST-alienbuild"} = ['alienbuild.cern.ch'];
		$sites_ce_hosts->{"AliEn2-TEST-oplapro12"} = ['oplapro12.cern.ch'];
		$sites_ce_hosts->{"AliEn2-TEST-alimacx08"} = ['alimacx08.cern.ch'];
		$sites_ce_hosts->{"AliEn2-TEST-pcalibuildamd"} = ['pcalibuildamd.cern.ch'];
		$sites_ce_hosts->{"AliEn2-TEST-lxb2075"} = ['lxb2075.cern.ch'];
	}
	$mesg = $ldap->unbind;
	
	filterDomains($sites_domains);

	return ($sites_domains, $ses_hosts, $ces_max_jobs, $sites_ce_hosts);
}

# remove similar domains from different sites
# keep the domain only in the first encountered site
sub filterDomains {
	my $sites_domains = shift;
	
	my @sites = sort(keys %$sites_domains);
	for(my $i=0; $i<@sites; $i++){
		my $site1 = $sites[$i];
		my $domains1 = $sites_domains->{$site1};
		for(my $j=$i+1; $j<@sites; $j++){
			my $site2 = $sites[$j];
			my $domains2 = $sites_domains->{$site2};
			for(my $k=0; $k<@$domains2; $k++){
				my $dom2 = $$domains2[$k];
				if($dom2 !~ /^>/ && contains($dom2, @$domains1)){
#					print "Reporting for $dom2 in $site2 as $site1\n";
					splice(@$domains2, $k, 1, (">$site1"));
					$k--;
				}
			}
		}
	}
}

# add $what to the given list and return the reference to the result.
sub addIfMissing {
	my $what = shift;
	my @where = @_ || ();

	push(@where, $what) if(! contains($what, @where));
	return \@where;
}

# check if the first given parameter is among all the others
sub contains {
	my $what = shift;
	my @where = @_;

	for my $elem (@where){
		return 1 if($what eq $elem);
	}
	return 0;
}

# extract unique domains from the given list of hosts
sub domainsFromHosts {
	my @hosts = @_;
	
	my %domains = ();
	foreach my $host (@hosts){
		$domains{$1} = 1 if $host =~ /\.(.*)/;
	}
	return keys(%domains);
}

# dump the ginven hash to stdout in the given section
sub dumpConf {
	my ($title, $data) = @_;

	print "[$title]\n";
	for my $k (sort(keys(%$data))){
		print "$k = @{$data->{$k}}\n";
	}
	print "\n";
}

# get the ALIEN_LDAP_DN from $ENV or from the central LDAP as in AliEn::Config.pm
sub getLDAP_DN {
	return $ENV{ALIEN_LDAP_DN} if $ENV{ALIEN_LDAP_DN};
	
	# not defined in ENV; get it from central AliEn LDAP
	my $ldap = Net::LDAP->new('alien.cern.ch:8389') or die "$@";
	$ldap->bind;    # an anonymous bind
	my $mesg = $ldap->search(base   => "o=alien,dc=cern,dc=ch",
				 filter => "(ou=$ORG)"
				);
	$mesg->code && die $mesg->error;
	if(! $mesg->count){
  		print "#ERROR: There is no organisation called '$ORG'\n";
		return "";
	}
	my $entry    = $mesg->entry(0);
	my $ldaphost = $entry->get_value('ldaphost');
	$ldaphost =~ s/\s+$//;
	my $LDAP_HOST = $ldaphost;
	my $LDAP_DN   = $entry->get_value('ldapdn');
	$ldap->unbind;    # take down session
	return "$LDAP_HOST/$LDAP_DN";
}

