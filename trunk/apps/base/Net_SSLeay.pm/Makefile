GARNAME = Net_SSLeay.pm
GARVERSION = 1.30
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = # test.diff

MASTER_SITES = $(CPAN_MIRROR)/authors/id/F/FL/FLORA/ http://www.cpan.org/authors/id/F/FL/FLORA/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/F/FL/FLORA/

LIBDEPS = apps/base/perl apps/base/globus-toolkit

DESCRIPTION = Perl extension for using OpenSSL
AUTHOR = Sampo Kellomaki
URL = http://cpan.uwinnipeg.ca/~sampo
LICENSE = OpenSSL

AUTOTEST = testForAliEnPerlModule Net::SSLeay $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = # $(WORKSRC)/Makefile

#ifeq ($(shell uname -s),Darwin)
#CONFIGURE_ARGS =
#else
CONFIGURE_ARGS = $(PREFIX)/globus -- LIBS="-L$(PREFIX)/globus/lib -lssl_$(GLOBUS_FLAVOR) -lcrypto_$(GLOBUS_FLAVOR)"
#endif

BUILD_ARGS =  

include ../category.mk

