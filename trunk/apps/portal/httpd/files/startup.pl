use strict;
use Apache::SOAP;
use AliEn::Logger;
use AliEn::Database::TaskQueue;

my @services=qw( ClusterMonitor ) ;

#following line is a mark for 300-prepareBankService.t. Please don't remove or modify 
#[TEST_MARK]
# Here come essential env vars 

$ENV{ALIEN_ROOT}="ALIEN_ROOT_VAR"; 
$ENV{ALIEN_HOME}="ALIEN_HOME_VAR"; 
$ENV{ALIEN_ORGANISATION}="ALIEN_ORGANISATION_VAR"; 
$ENV{ALIEN_LDAP_DN}="ALIEN_LDAP_DN_VAR";
$ENV{ALIEN_USER}="ALIEN_USER_VAR";
$ENV{GLOBUS_LOCATION}="$ENV{ALIEN_ROOT}/globus";
my $proxy="/tmp/x509up_u$<";
$ENV{X509_USER_PROXY}=$proxy;
$ENV{X509_USER_CERT}="$ENV{ALIEN_HOME}/globus/usercert.pem";
$ENV{X509_USER_KEY}="$ENV{ALIEN_HOME}/globus/userkey.pem";
$ENV{X509_CERT_DIR}="$ENV{ALIEN_ROOT}/globus/share/certificates";
#$ENV{SEALED_ENVELOPE_REMOTE_PUBLIC_KEY}="$ENV{ALIEN_HOME}/authen/rpub.pem";
#$ENV{SEALED_ENVELOPE_REMOTE_PRIVATE_KEY}="$ENV{ALIEN_HOME}/authen/rpriv.pem";
#$ENV{SEALED_ENVELOPE_LOCAL_PUBLIC_KEY}="$ENV{ALIEN_HOME}/authen/lpub.pem";
#$ENV{SEALED_ENVELOPE_LOCAL_PRIVATE_KEY}="$ENV{ALIEN_HOME}/authen/lpriv.pem";
#$ENV{ALIEN_DATABASE_PASSWORD}="ALIEN_DATABASE_PASSWORD_VAR";
#$ENV{ALIEN_DATABASE_ROLE}="ALIEN_DATABASE_ROLE_VAR"; 
#$ENV{ALIEN_DATABASE_SSL}="ALIEN_DATABASE_SSL_VAR";

my $l=AliEn::Logger->new();

$l->infoToSTDERR();
foreach my $s (@services) {
  print "Checking $s\n";
  my $name="AliEn::Service::$s";
  eval {
    eval "require $name" or die("Error requiring the module: $@");
    $name->new() or exit(-2);

  };
  if ($@) {
    print "NOPE!!\n $@\n";
        
    exit(-2);
  }

}

print "ok\n";

