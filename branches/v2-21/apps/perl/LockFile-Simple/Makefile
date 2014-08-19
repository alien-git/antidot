GARNAME = LockFile-Simple
GARVERSION = 0.208
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/S/SC/SCHWIGON/lockfile-simple/
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

