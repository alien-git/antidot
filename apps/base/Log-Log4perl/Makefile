GARNAME = Log-Log4perl
GARVERSION = 1.28
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://search.cpan.org/CPAN/authors/id/M/MS/MSCHILLI/Log-Log4perl-1.28.tar.gz
MASTER_SITES = $(CPAN_MIRROR)/authors/id/M/MS/MSCHILLI/ http://www.cpan.org/authors/id/M/MS/MSCHILLI/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/M/MS/MSCHILLI/

LIBDEPS = apps/base/perl

DESCRIPTION = Log4j implementation in Perl
AUTHOR = Michael Schilli 
URL = http://cpan.uwinnipeg.ca/~mschilli
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule Log::Log4perl $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk
