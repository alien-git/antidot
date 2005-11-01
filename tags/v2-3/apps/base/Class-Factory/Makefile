GARNAME = Class-Factory
GARVERSION = 1.03
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/C/CW/CWINTERS/ http://www.cpan.org/authors/id/C/CW/CWINTERS/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/C/CW/CWINTERS/

LIBDEPS = apps/base/perl

DESCRIPTION = Base class for dynamic factory classes
AUTHOR = Chris Winters
URL = http://cpan.uwinnipeg.ca/~cwinters
LICENSE = Perl
 
CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule Class::Factory $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

