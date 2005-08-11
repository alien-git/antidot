#!/usr/local/bin/perl
# This will attempt to download the 1.4.2 java virtual machine for a given
# platform on linux.

use strict;
use warnings;
use LWP::UserAgent;

my $platform = shift;

die "This script must be called with a parameter like linux-i586 or linux-ia64." unless $platform && $platform =~ /linux-i(586|a64)/;

my $main_download_page = "http://java.sun.com/j2se/1.4.2/download.html";
my $main_link_title = "Download J2SE SDK";

my $ua = LWP::UserAgent->new;
$ua->agent("get_java.pl/1.0 ");
$ua->env_proxy();

my $req = HTTP::Request->new(GET => $main_download_page);
print "Getting main download page...[$main_download_page]\n";
my $res = $ua->request($req);
die "Failed: ".$res->status_line() if $res->is_error();

my $second_download_page = undef;
for my $line (split("\n", $res->content())){
	if($line =~ /$main_link_title/){
		$second_download_page = $1 if($line =~ /href="(\S+)">/);
		last;
	}
}
die "Failed to find '$main_link_title' on main download page." if ! defined($second_download_page);

$req = HTTP::Request->new(GET => $second_download_page);
$req->push_header("Referer" => $main_download_page);
print "Getting second download page...[$second_download_page]\n";
$res = $ua->request($req);
die "Failed: ".$res->status_line() if $res->is_error();

#print "==================================================\n";
my $license_accept_url = undef;
#print "Recevied headers:\n".$res->headers()->as_string();
#print "==================================================\n";
for my $line (split("\n", $res->content())){
	if($line =~ /<FORM NAME="licenseForm"/){
		$license_accept_url = $1 if($line =~ /<FORM NAME="licenseForm" method="post" action="(\S+)">/);
		last;
	}
}
die "Failed to find license accept url on the second download page." if ! defined($license_accept_url);

print "Accepting license...[$license_accept_url]\n";
$req = HTTP::Request->new(POST => $license_accept_url);
$req->push_header("Referer" => $second_download_page);
$req->push_header("Content-Type" => "application/x-www-form-urlencoded");
$req->content("acceptDeclineRadioGroup_3=Yes&continueButtonId_7=Continue&acceptStatus=NotSelected&hiddenContinueButtonId_8=Continue");
$res = $ua->request($req);
die "Failed: ".$res->status_line() if $res->is_error();

#print "++++++++++++++++++++++++++++++++++++++++++++++++++\n";
my $final_download_link = undef;
my $file_name = undef;
#print "Received headers:\n".$res->headers()->as_string();
#print "++++++++++++++++++++++++++++++++++++++++++++++++++\n";
for my $line (split("\n", $res->content())){
        if($line =~ /$platform\.bin/){
		$final_download_link = $1 if ($line =~ /<A HREF="(.+)">/);
		$file_name = $1 if $final_download_link =~ /([^\/]+)$/;
		last;
	}
}
die "Failed to find binary for requested platform." if ! defined($final_download_link);

print "Downloading $file_name from...[$final_download_link]\n";
$req = HTTP::Request->new(GET => $final_download_link);
$req->push_header("Referer" => $license_accept_url);
$res = $ua->request($req, $file_name);
die "Failed: ".$res->status_line() if $res->is_error();
print "JVM binary successfully retrieved!\n$file_name\n";

