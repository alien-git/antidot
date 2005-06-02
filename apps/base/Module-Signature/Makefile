GARNAME = Module-Signature
GARVERSION = 0.44
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/A/AU/AUTRIJUS/ http://www.cpan.org/authors/id/A/AU/AUTRIJUS/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/A/AU/AUTRIJUS/

LIBDEPS = apps/base/gnupg apps/base/Digest-SHA1

DESCRIPTION = Module signature file manipulation
AUTHOR = Autrijus Tang
URL = http://cpan.uwinnipeg.ca/~autrijus
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule Module::Signature $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  
CONFIGURE_ENV = yes |  

include ../category.mk

