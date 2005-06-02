GARNAME = Cache-Cache
GARVERSION = 1.03
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/D/DC/DCLINTON/ http://www.cpan.org/authors/id/D/DC/DCLINTON/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/D/DC/DCLINTON/

LIBDEPS = apps/base/Error

AUTOTEST = testForAliEnPerlModule Cache::Cache $(GARVERSION)

DESCRIPTION = Generic cache interface and implementations
LICENSE = Perl
URL = http://cpan.uwinnipeg.ca/~dclinton
AUTHOR = DeWitt Clinton

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

