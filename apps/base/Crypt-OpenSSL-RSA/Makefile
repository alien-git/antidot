GARNAME = Crypt-OpenSSL-RSA
GARVERSION = 0.21
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

CONFIGURE_ARGS = INC=-I/usr/kerberos/include CC=gcc LIBS="-L$(PREFIX) -lssl -lcrypto"

CONFIGURE_ENV = 

include ../category.mk

