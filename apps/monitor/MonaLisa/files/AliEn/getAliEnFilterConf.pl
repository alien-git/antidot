# getAliEnFilterConf.pl
#
# Get the ML components configuration from AliEn LDAP
# This is currently called from AliEnFilter to get the list
# of Sites with corresponding domains, Storage Elements (running xrootd).
# and max_jobs for each defined CE.
#
# Catalin Cirstoiu <Catalin.Cirstoiu@cern.ch>
# Version 0.2 
#
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
my $LDAPDN = $ENV{ALIEN_LDAP_DN} || "aliendb5.cern.ch:8389/o=$ORG,dc=cern,dc=ch";
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
				 filter => "objectClass=AliEnSite"
			        );
	my $total = $mesg->count;
	if(! $total){
		print "#There are no sites in $ORG\n" if $TESTING;
	}
	
	foreach my $site_entry ($mesg->entries){ 
		my $site = $site_entry->get_value("ou");
		my @domains = $site_entry->get_value("domain");
		if($site ne "LCG"){
			# LCG hacks
#			print "\nFarm: $site\nDomains: @domains\n" if $TESTING;
			$sites_domains->{$site} = "@domains";
		}
		my $fullLDAPdn = "ou=$site,ou=Sites,$ldap_dn";
		my $msg = $ldap->search(base   => "ou=SE,ou=Services,$fullLDAPdn",
					filter => "(|(objectClass=AliEnMSS)(objectClass=AliEnSE))"
					);
		foreach my $se_entry ($msg->entries){ 
			my $se_last_name = $se_entry->get_value("name");
			my $se_name = ucfirst($ORG)."::".$site."::".$se_last_name;
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
			if($site eq "LCG"){
				# More LCG Hacks
				@domains = domainsFromHosts(@se_hosts);
#				print "\nFarm: ${se_last_name}-L\nDomains: @domains\n" if $TESTING;
				$lcg_domains->{"$se_last_name"} = "@domains";
			}
#			print "SE_Name: $se_name\nSE_Hosts: @se_hosts\n" if $TESTING;
			$ses_hosts->{$se_name} = "@se_hosts";
		}
		$msg = $ldap->search(base   => "ou=CE,ou=Services,$fullLDAPdn",
				     filter => "objectClass=AliEnCE");
		foreach my $ce_entry ($msg->entries){
			my $ce_name = ucfirst($ORG)."::".$site."::".$ce_entry->get_value("name");
			my $max_jobs = $ce_entry->get_value("maxjobs");
			$ces_max_jobs->{$ce_name} = $max_jobs;
#			print "CE_Name: $ce_name; max_jobs: $max_jobs\n";
		}
		$ces_max_jobs->{"alienbuild::CERN::testCE"} = 6 if $TESTING;
	}
	$mesg = $ldap->unbind;
	# Put the LCG domains in site domains if they don't exist already
	foreach my $sit (keys(%$lcg_domains)){
		if($sites_domains->{$sit}){
			# we already have a standalone AliEn for this site; merge them
			my @s_d = split(/ /, $sites_domains->{$sit});
			my @l_d = split(/ /, $lcg_domains->{$sit});
			for my $ldom (@l_d){
				push(@s_d, $ldom) if ! contains($ldom, @s_d);
			}
			$sites_domains->{$sit} = "@s_d";
		}else{
			# we don't have a standalone AliEn installation for this site; use the LCG one
			$sites_domains->{"${sit}-L"} = $lcg_domains->{$sit};
		}
	}
	return ($sites_domains, $ses_hosts, $ces_max_jobs);
}

# 
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
		print "$k = $data->{$k}\n";
	}
	print "\n";
}
