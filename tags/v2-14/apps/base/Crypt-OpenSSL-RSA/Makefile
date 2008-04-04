GARNAME = Crypt-OpenSSL-RSA
GARVERSION = 0.23
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = 

MASTER_SITES = $(CPAN_MIRROR)/authors/id/I/IR/IROBERTS/ http://www.cpan.org/authors/id/I/IR/IROBERTS/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/I/IR/IROBERTS/

LIBDEPS = apps/base/Crypt-OpenSSL-Random

DESCRIPTION = Interface to OpenSSL RSA methods
AUTHOR = Ian Robertson
URL = http://cpan.uwinnipeg.ca/~iroberts
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule Crypt::OpenSSL::RSA $(GARVERSION)

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = CC=gcc LIBS="-L$(PREFIX)/globus/lib -lssl_$(GLOBUS_FLAVOR) -lcrypto_$(GLOBUS_FLAVOR)" INC="-I$(PREFIX)/globus/include/$(GLOBUS_FLAVOR)/openssl -I/usr/kerberos/include/"

CONFIGURE_ENV = 

include ../category.mk

