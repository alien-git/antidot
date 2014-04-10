GARNAME = Test-TCP
GARVERSION = 2.02
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://search.cpan.org/CPAN/authors/id/T/TO/TOKUHIROM/Test-TCP-1.17.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/T/TO/TOKUHIROM/

PATCHFILES = cpan.patch

LIBDEPS = apps/perl/Test-SharedFork

DESCRIPTION = testing TCP program
LICENSE = Perl
URL = http://search.cpan.org/CPAN/authors/id/T/TO/TOKUHIROM/
AUTHOR = MATSUNO Tokuhiro

CONFIGURE_SCRIPTS = $(WORKSRC)/Build.PL
BUILD_SCRIPTS = $(WORKSRC)/Build
INSTALL_SCRIPTS = $(WORKSRC)/Build
TEST_SCRIPTS = $(WORKSRC)/Build

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

