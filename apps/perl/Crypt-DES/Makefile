GARNAME = Crypt-DES
GARVERSION = 2.05
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/D/DP/DPARIS/ http://www.cpan.org/authors/id/D/DP/DPARIS/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/D/DP/DPARIS/

LIBDEPS = apps/perl/perl 

DESCRIPTION = DES encryption (libdes)
AUTHOR =  Dave Paris
URL = http://cpan.uwinnipeg.ca/~dparis
LICENSE = 

AUTOTEST = testForAliEnPerlModule Crypt::DES $(GARVERSION)

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

