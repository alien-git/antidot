GARNAME = Test-NoWarnings
GARVERSION = 1.04
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = 

#http://search.cpan.org/CPAN/authors/id/A/AD/ADAMK/Test-NoWarnings-1.02.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/A/AD/ADAMK/

LIBDEPS = apps/perl/Test-Tester apps/perl/Test-Simple

DESCRIPTION = Make sure you didn't emit any warnings while testing
AUTHOR = Adam Kennedy
URL = http://search.cpan.org/~adamk/
LICENSE = Perl

AUTOTEST = 

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS =  $(WORKSRC)/Makefile

BUILD_ARGS =  

include ../category.mk

 