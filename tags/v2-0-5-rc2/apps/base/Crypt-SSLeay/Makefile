GARNAME = Crypt-SSLeay
GARVERSION = 0.51
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = 01.diff

MASTER_SITES = $(CPAN_MIRROR)/authors/id/C/CH/CHAMAS/ http://www.cpan.org/authors/id/C/CH/CHAMAS/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/C/CH/CHAMAS/

LIBDEPS = apps/base/openssl

DESCRIPTION = OpenSSL glue that provides LWP https support
AUTHOR = Joshua Chamas
URL = http://cpan.uwinnipeg.ca/~chamas
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule Crypt::SSLeay $(GARVERSION)

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

BUILD_ARGS =  

ifeq ($(shell uname),Darwin)
CONFIGURE_ARGS = -default /usr
else
CONFIGURE_ARGS = -default $(PREFIX)  
endif
CONFIGURE_ENV  =  

include ../category.mk


