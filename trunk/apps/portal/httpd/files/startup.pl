use strict;
use Apache::SOAP;
use AliEn::Logger;

my @services=qw( PackMan );

my $userID = getpwuid($<);

my $tmpEnv = `grep -m 1 ALIEN_HOME $ENV{HOME}/.alien/Environment`;
chomp $tmpEnv;
(undef, $tmpEnv) = split (/=\s*/, $tmpEnv);
$ENV{ALIEN_HOME}= ( $tmpEnv || $ENV{ALIEN_HOME} || "/home/$userID/.alien" );

$tmpEnv = undef;
$tmpEnv = `grep -m 1 ALIEN_ROOT $ENV{HOME}/.alien/Environment`;
chomp $tmpEnv;
(undef, $tmpEnv) = split (/=\s*/, $tmpEnv);
$ENV{ALIEN_ROOT}= ( $tmpEnv || $ENV{ALIEN_ROOT} || "/home/$userID/alien") ; 


$tmpEnv = undef;
$tmpEnv = `grep -m 1 ALIEN_USER $ENV{HOME}/.alien/Environment`;
chomp $tmpEnv;
(undef, $tmpEnv) = split (/=\s*/, $tmpEnv);
$ENV{ALIEN_USER} = ( $tmpEnv || $ENV{ALIEN_USER} || "$userID" );

$tmpEnv = undef;
$tmpEnv = `grep -m 1 ALIEN_ORGANISATION $ENV{HOME}/.alien/Environment`;
chomp $tmpEnv;
(undef, $tmpEnv) = split (/=\s*/, $tmpEnv);
$ENV{ALIEN_ORGANISATION}= ( $tmpEnv || $ENV{ALIEN_ORGANISATION} ||  "ALICE" );

$tmpEnv = undef;
$tmpEnv = `grep -m 1 GLOBUS_LOCATION $ENV{HOME}/.alien/Environment`;
chomp $tmpEnv;
(undef, $tmpEnv) = split (/=\s*/, $tmpEnv);
$ENV{GLOBUS_LOCATION}= ( $tmpEnv || $ENV{GLOBUS_LOCATION} || "$ENV{ALIEN_ROOT}/globus" ) ;

$tmpEnv = undef;
$tmpEnv = `grep -m 1 X509_USER_PROXY $ENV{HOME}/.alien/Environment`;
chomp $tmpEnv;
(undef, $tmpEnv) = split (/=\s*/, $tmpEnv);
$ENV{X509_USER_PROXY}=( $tmpEnv || $ENV{X509_USER_PROXY} || "/tmp/x509up_u$<" );

$tmpEnv = undef;
$tmpEnv = `grep -m 1 X509_CERT_DIR $ENV{HOME}/.alien/Environment`;
chomp $tmpEnv;
(undef, $tmpEnv) = split (/=\s*/, $tmpEnv);
$ENV{X509_CERT_DIR}=( $tmpEnv || $ENV{X509_CERT_DIR} || "$ENV{GLOBUS_LOCATION}/share/certificates" );

#$ENV{ALIEN_LDAP_DN}="alice-ldap.cern.ch:8389/o=alice,dc=cern,dc=ch"; 

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

