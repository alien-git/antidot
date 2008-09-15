GARNAME = Unicode-String
GARVERSION = 2.09
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/G/GA/GAAS/ http://www.cpan.org/authors/id/G/GA/GAAS/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/G/GA/GAAS/

LIBDEPS = apps/base/perl 

DESCRIPTION = String manipulation for Unicode strings
AUTHOR = Gisle Aas 
URL = http://cpan.uwinnipeg.ca/~gaas
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule Unicode::String $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

