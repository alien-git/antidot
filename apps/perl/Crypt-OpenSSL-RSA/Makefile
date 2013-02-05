GARNAME = Crypt-OpenSSL-RSA
GARVERSION = 0.28
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = 

#http://search.cpan.org/CPAN/authors/id/P/PE/PERLER/Crypt-OpenSSL-RSA-0.28.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/P/PE/PERLER/

LIBDEPS = apps/perl/Crypt-OpenSSL-Random

DESCRIPTION = Interface to OpenSSL RSA methods
AUTHOR = Ian Robertson
URL = http://cpan.uwinnipeg.ca/~iroberts
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = LIBS="-L$(PREFIX)/lib -lssl -lcrypto" INC="-I$(PREFIX)/include"

CONFIGURE_ENV = 

include ../category.mk

