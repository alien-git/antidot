GARNAME = Class-Singleton
GARVERSION = 1.03
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/A/AB/ABW/ http://www.cpan.org/authors/id/A/AB/ABW/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/A/AB/ABW/

LIBDEPS = apps/base/perl

DESCRIPTION = Implementation of a "Singleton" class
AUTHOR = Andy Wardley
URL = http://cpan.uwinnipeg.ca/~abw
LICENSE = Artistic

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule Class::Singleton $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

