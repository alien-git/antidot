GARNAME = Net_SSLeay.pm
GARVERSION = 1.25
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/S/SA/SAMPO/ http://www.cpan.org/authors/id/S/SA/SAMPO/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/S/SA/SAMPO/

LIBDEPS = apps/base/perl apps/base/openssl

DESCRIPTION = Secure Socket Layer (based on OpenSSL)

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(PREFIX) -- PREFIX=$(PREFIX)
BUILD_ARGS =  

include ../category.mk

