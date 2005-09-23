# getAliEnFilterConf.pl
#
# Get the ML components configuration from AliEn LDAP
# This is currently called from AliEnFilter to get the list
# of sites and Storage Elements (running xrootd).
#
# Version 0.1, Catalin Cirstoiu <Catalin.Cirstoiu@cern.ch>
# 13/09/2005

use strict;
use warnings;

use Carp;
use Net::LDAP;
use Net::Domain;

my $ORG    = lc($ENV{ALIEN_ORGANISATION} || "Alice");  #in lowercase;
my $LDAPDN = $ENV{ALIEN_LDAP_DN} || "aliendb5.cern.ch:8389/o=$ORG,dc=cern,dc=ch";
my $HOST   = shift || $ENV{ALIEN_HOSTNAME} || $ENV{HOSTNAME} || $ENV{HOST};

my $DEFAULT_APMON_CONFIG = "aliendb5.cern.ch";
my $verbose = 0;  # print the values on screen.

my ($sites, $ses) = getSitesAndDomains();

dumpConf("SITES", $sites);
dumpConf("SEs", $ses);

# return 2 hashes:
# - farm-names -> domains
# - storage element names -> hosts
sub getSitesAndDomains {
	
	my ($ldap_host, $ldap_dn) = split("/", $LDAPDN);
	my $ldap = Net::LDAP->new($ldap_host) or die "$@";
	$ldap->bind;
	
	my $sites_config = {};
	my $ses_config = {};
	my $mesg = $ldap->search(base   => "ou=Sites,$ldap_dn",
				 filter => "objectClass=AliEnSite"
			        );
	my $total = $mesg->count;
	if(! $total){
#		print "#There are no sites in $ORG\n";
	}
	
	foreach my $site_entry ($mesg->entries){ 
		my $site = $site_entry->get_value("ou");
		my @domains = $site_entry->get_value("domain");
#		print "\nFarm: $site\n";
#		print "Domains: @domains\n";
		$sites_config->{$site} = "@domains";
		my $fullLDAPdn = "ou=$site,ou=Sites,$ldap_dn";
		my $msg = $ldap->search(base   => "ou=SE,ou=Services,$fullLDAPdn",
					filter => "(|(objectClass=AliEnMSS)(objectClass=AliEnSE))"
					);
#		print "#No MSSs in $domains[0]\n" if(! $msg->count); 
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
#			print "SE_Name: $se_name\n";
#			print "SE_Host: @se_hosts\n";
			$ses_config->{$se_name} = "@se_hosts";
		}
	}
	$mesg = $ldap->unbind;
	return ($sites_config, $ses_config);
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
