use strict;
use Apache::SOAP;
use AliEn::Logger;



my @services=qw( PackMan );

my $tmpEnv = getpwuid($<);
$ENV{ALIEN_ROOT}="/home/$tmpEnv/alien"; 
$ENV{ALIEN_HOME}= "/home/$tmpEnv/.alien" 
$ENV{ALIEN_USER} = "$tmpEnv";
$ENV{ALIEN_ORGANISATION}= "ALICE" ;
$ENV{GLOBUS_LOCATION}= "$ENV{ALIEN_ROOT}/globus" ;
$ENV{X509_USER_PROXY}="/tmp/x509up_u$<";
$ENV{X509_CERT_DIR}="$ENV{GLOBUS_LOCATION}/share/certificates";

$ENV{ALIEN_LDAP_DN}="alice-ldap.cern.ch:8389/o=alice,dc=cern,dc=ch"; 

my $l=AliEn::Logger->new();
$l->infoToSTDERR();

foreach my $s (@services) {
  print "Checking $s\n";
  my $name="AliEn::Service::$s";
  eval {
    eval "require $name" or die("Error requiring the module: $@");
    my $serv=$name->new() ;
    $serv or exit(-2);
 

  };
  if ($@) {
    print "NOPE!!\n $@\n";
        
    exit(-2);
  }

}

print "ok\n";

