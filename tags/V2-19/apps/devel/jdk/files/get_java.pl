#!/usr/local/bin/perl
# This will attempt to download the 1.5.0 java developer's kit for a given
# platform on linux.

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

#jre-6u12-linux-i586.bin jre-6u12-linux-ia64.bin jre-6u12-linux-x64.bin
my $success = 0;
#my $file_name = "jdk-$java_ver-$platform.".($platform =~ /ia64/ ? "tar.bz2" : "bin");
my $file_name = "jdk-$java_ver-$platform.bin";
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

