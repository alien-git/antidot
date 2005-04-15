GARNAME = Crypt-OpenSSL-Random
GARVERSION = 0.03
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/I/IR/IROBERTS/ http://www.cpan.org/authors/id/I/IR/IROBERTS/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/I/IR/IROBERTS/

LIBDEPS = apps/base/perl apps/base/openssl

DESCRIPTION = Interface to OpenSSL PRNG methods
AUTHOR = Ian Robertson
URL = http://cpan.uwinnipeg.ca/~iroberts
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

ifeq ($(shell uname),Darwin)
CONFIGURE_ARGS = INC=-I/usr/kerberos/include 
else
CONFIGURE_ARGS = INC=-I/usr/kerberos/include LIBS="-L$(PREFIX) -lssl -lcrypto" 
endif

BUILD_ARGS =  

include ../category.mk

