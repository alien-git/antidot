# getAliEnFilterConf.pl
#
# Get the ML components configuration from AliEn LDAP
# This is currently called from AliEnFilter to get the list
# of Sites with corresponding domains, Storage Elements (running xrootd).
# and max_jobs for each defined CE.
#
# Catalin Cirstoiu <Catalin.Cirstoiu@cern.ch>
# Version 0.3 
#
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
my $LDAPDN = getLDAP_DN() || "aliendb5.cern.ch:8389/o=$ORG,dc=cern,dc=ch";
my $HOST   = shift || $ENV{ALIEN_HOSTNAME} || $ENV{HOSTNAME} || $ENV{HOST};

if($TESTING){
	$ORG    = lc("Alice");  #in lowercase;
	$LDAPDN = "aliendb5.cern.ch:8389/o=$ORG,dc=cern,dc=ch";
	$HOST   = shift || $ENV{ALIEN_HOSTNAME} || $ENV{HOSTNAME} || $ENV{HOST};
}

my $DEFAULT_APMON_CONFIG = "aliendb5.cern.ch";
my $verbose = 0;  # print the values on screen.

my ($sites_domains, $ses_hosts, $ces_max_jobs) = getSitesAndDomains();

dumpConf("Sites_domains", $sites_domains);
dumpConf("SEs_hosts", $ses_hosts);
dumpConf("CEs_max_jobs", $ces_max_jobs);

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
	my $mesg = $ldap->search(base   => "ou=Sites,$ldap_dn",
				 filter => "objectClass=AliEnSite");
	my $total = $mesg->count;
	if(! $total){
		print "#There are no sites in $ORG\n" if $TESTING;
	}
	
	foreach my $site_entry ($mesg->entries){
		my $site = $site_entry->get_value("ou");
		my @domains = $site_entry->get_value("domain");
		if($site ne "LCG"){ # we don't care about this in case of LCG sites
#			print "\nFarm: $site\nDomains: @domains\n" if $TESTING;
			if(! $sites_domains->{$site}){
				$sites_domains->{$site} = \@domains if(@domains);
			}else{
				for my $d (@domains){
					push(@{$sites_domains->{$site}}, $d) if(! contains($d, @{$sites_domains->{$site}}));
				}
			}
		}
		
		# Get the SE services - we need SEs hostnames
		my $fullLDAPdn = "ou=$site,ou=Sites,$ldap_dn";
		my $msg = $ldap->search(base   => "ou=SE,ou=Services,$fullLDAPdn",
					filter => "(|(objectClass=AliEnMSS)(objectClass=AliEnSE))");
		foreach my $se_entry ($msg->entries){
			my $se_name = ucfirst($ORG)."::".$site."::".$se_entry->get_value("name");
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
			$ses_hosts->{$se_name} = \@se_hosts;
		}

		# Get the CE services - we need the maximum number of jobs for each CE
		$msg = $ldap->search(base   => "ou=CE,ou=Services,$fullLDAPdn",
				     filter => "objectClass=AliEnCE");
		foreach my $ce_entry ($msg->entries){
			my $ce_name = ucfirst($ORG)."::".$site."::".$ce_entry->get_value("name");
			my $max_jobs = $ce_entry->get_value("maxjobs");
			$ces_max_jobs->{$ce_name} = [$max_jobs];
#			print "CE_Name: $ce_name; max_jobs: $max_jobs\n";
		}

		# Get ML services - mainly for LCG site domains, but if normal sites
		# have a domain specified in ML ldap properties, that will be taken also.
		$msg = $ldap->search(base   => "ou=MonaLisa,ou=Services,$fullLDAPdn",
				     filter => "objectClass=AliEnMonaLisa");
		foreach my $ml_entry ($msg->entries){
			my $ml_name = $ml_entry->get_value("name");
			my @ml_domains = $ml_entry->get_value("domain");
			if(! $sites_domains->{$ml_name}){
				$sites_domains->{$ml_name} = \@ml_domains if(@ml_domains);
			}else{
				for my $d (@ml_domains){
					push(@{$sites_domains->{$ml_name}}, $d) if(! contains($d, @{$sites_domains->{$ml_name}}));
				}
			}
		}
		if($TESTING){
			$ces_max_jobs->{"alienbuild::CERN::testCE"} = [6];
			$ces_max_jobs->{"oplapro12::CERN::testCE"} = [6];
		}
	}
	$mesg = $ldap->unbind;
	return ($sites_domains, $ses_hosts, $ces_max_jobs);
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
				 filter => "(ou=$ENV{ALIEN_ORGANISATION})"
				);
	$mesg->code && die $mesg->error;
	if(! $mesg->count){
  		print "#ERROR: There is no organisation called '$ENV{ALIEN_ORGANISATION}'\n";
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

