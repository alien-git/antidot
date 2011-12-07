GARNAME = Config-ApacheFormat
GARVERSION = 1.2
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = tests.diff

MASTER_SITES = $(CPAN_MIRROR)/authors/id/S/SA/SAMTREGAR/ http://www.cpan.org/authors/id/S/SA/SAMTREGAR/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/S/SA/SAMTREGAR/

LIBDEPS = apps/perl/Class-MethodMaker 

DESCRIPTION = Use Apache format config files
AUTHOR = Sam Tregar
URL = http://cpan.uwinnipeg.ca/~samtregar
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule Config::ApacheFormat $(GARVERSION)

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

