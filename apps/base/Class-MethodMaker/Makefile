GARNAME = Class-MethodMaker
GARVERSION = 2.08
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/F/FL/FLUFFY/ http://www.cpan.org/authors/id/F/FL/FLUFFY/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/F/FL/FLUFFY/

LIBDEPS = apps/base/perl

DESCRIPTION = Create generic class methods
AUTHOR = Martyn J. Pearce
URL = http://cpan.uwinnipeg.ca/~fluffy
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule Class::MethodMaker $(GARVERSION)

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

