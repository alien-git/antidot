GARNAME = Digest-SHA
GARVERSION = 5.28
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/M/MS/MSHELOR/ http://www.cpan.org/authors/id/M/MS/MSHELOR/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/M/MS/MSHELOR/

LIBDEPS = apps/base/perl

DESCRIPTION = Perl extension for SHA-1/224/256/384/512
AUTHOR = Mark Shelor
URL = http://cpan.uwinnipeg.ca/~mshelor
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule Digest::SHA $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

