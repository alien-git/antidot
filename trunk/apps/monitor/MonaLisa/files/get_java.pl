#!/usr/local/bin/perl
# This will attempt to download the 1.5.0 java virtual machine for a given
# platform on linux.

# If it's ia64, it will get a tar.bz2 file (repackaged from the jrockit JVM), otherwise
# it will take the default sun JVM.

use strict;
use warnings;
use LWP::UserAgent;

my $platform = shift;
my $java_ver = shift;
my @url_base = ();

while(my $u = shift){
	push(@url_base, $u);
}

die "Usage:\n\tget_java.pl <platform> <java_version> <url_base1> [ <url_base2> ... ]\n" 
	unless $java_ver && @url_base && $platform;

my $ua = LWP::UserAgent->new;
$ua->agent("get_java.pl/1.0 ");
$ua->env_proxy();

my $success = 0;
#my $file_name = "jdk-$java_ver-$platform.".($platform =~ /ia64/ ? "tar.bz2" : "bin");
my $file_name = "jre-$java_ver-$platform.bin";
my $res;
for my $base (@url_base){
	my $url = "${base}../java/${file_name}";
	
	my $req = HTTP::Request->new(GET => $url);
	print "Getting $url ... ";
	$res = $ua->request($req, $file_name);
	if(! $res->is_error()){
		$success = 1;
		print "ok!\n";
		last;
	}
	print "failed.\n";
}

die "Failed to download '$file_name'\n".$res->status_line() if ! $success;

print "JVM binary successfully retrieved!\n$file_name\n";

