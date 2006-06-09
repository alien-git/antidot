#!/usr/bin/perl
####################################################################
# Script to perform some simple tests on AliEn
# USAGE: $ALIEN_ROOT/bin/alien -x alienTests.pl
# Author, bugs, questions: Catalin.Cirstoiu@cern.ch
# Original version from: Patricia MENDEZ LORENZO <pmendez@mail.cern.ch>
###################################################################

use strict;
use warnings;

use Sys::Hostname;
use Net::LDAP;
use Net::LDAP::Entry;


sub dumpStatus {
	my $service = shift;
	my $status = shift;
	my $message = shift || "";

	print "$service\tStatus\t$status".($message ? "\tMessage\t$message" : "")."\n";
}

my $currentpath = $ENV{PWD};

###################################################################
# 1st TEST
# Performing some Alien tests
###################################################################
sub test1 {
	open TMP4, ">/tmp/myAtest$$";
	print TMP4 "Testing String\n";
	close TMP4;
    
	my @test_cmd = (
		"alien -exec add test" 		=> "alien -exec add myTestFile$$ /tmp/myAtest$$ > /dev/null 2> /dev/null",
		"alien -exec whereis test" 	=> "alien -exec whereis myTestFile$$ > /dev/null 2> /dev/null",
		"alien -exec get test"		=> "alien -exec get myTestFile$$ > /dev/null 2> /dev/null",
		"alien -exec rm test"		=> "alien -exec rm myTestFile$$  > /dev/null 2> /dev/null",
	);

	for(my $i = 0; $i < @test_cmd; $i+=2){
		my ($test, $cmd) = ($test_cmd[$i], $test_cmd[$i+1]);
		system("export PATH=\$PATH:$ENV{ALIEN_ROOT}/bin ; $cmd");
		my $exit_value  = $? >> 8;
		if($exit_value){
			dumpStatus($test, 1, "Exit value $exit_value");
		}else{
			dumpStatus($test, 0);
		}
	}
  	
	system "rm /tmp/myAtest$$";
}

for(my $i = 1; $i < 2; $i++){
#	print "Doing test $i...\n";
	eval "test$i()";
}

dumpStatus("SCRIPTRESULT", 0);

