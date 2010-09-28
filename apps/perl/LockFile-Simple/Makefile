GARNAME = LockFile-Simple
GARVERSION = 0.2.5
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/R/RA/RAM/ http://www.cpan.org/authors/id/R/RA/RAM/

LIBDEPS = apps/perl/perl

DESCRIPTION = Simple file locking scheme
AUTHOR =  Raphael Manfredi
URL = http://cpan.uwinnipeg.ca/~ram
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule LockFile::Simple $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

