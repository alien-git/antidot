GARNAME = Net_SSLeay.pm
GARVERSION = 1.25
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = test.diff

MASTER_SITES = $(CPAN_MIRROR)/authors/id/S/SA/SAMPO/ http://www.cpan.org/authors/id/S/SA/SAMPO/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/S/SA/SAMPO/

LIBDEPS = apps/base/perl apps/base/openssl

DESCRIPTION = Perl extension for using OpenSSL
AUTHOR = Sampo Kellomaki
URL = http://cpan.uwinnipeg.ca/~sampo
LICENSE = OpenSSL

AUTOTEST = testForAliEnPerlModule Net::SSLeay $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(PREFIX)

BUILD_ARGS =  

include ../category.mk

