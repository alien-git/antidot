GARNAME = Params-Validate
GARVERSION = 0.76
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/D/DR/DROLSKY/ http://www.cpan.org/authors/id/D/DR/DROLSKY/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/D/DR/DROLSKY/

LIBDEPS = apps/base/perl

DESCRIPTION = Validate sub params against a spec
AUTHOR = Dave Rolsky
URL = http://cpan.uwinnipeg.ca/~drolsky
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule Params::Validate $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

