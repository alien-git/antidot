GARNAME = Data-UUID
GARVERSION = 0.11
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/A/AG/AGOLOMSH/ http://www.cpan.org/authors/id/A/AG/AGOLOMSH/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/A/AG/AGOLOMSH/

LIBDEPS = apps/base/perl

DESCRIPTION = Perl extension for generating Globally/Universally IDs
AUTHOR = Alexander Golomshtok 
URL = http://cpan.uwinnipeg.ca/~agolomsh
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = env PERL_MM_USE_DEFAULT=1 
BUILD_ARGS =  

include ../category.mk

