GARNAME = Net-SSLeay
GARVERSION = 1.68
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = 

#http://search.cpan.org/CPAN/authors/id/M/MI/MIKEM/Net-SSLeay-1.48.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/M/MI/MIKEM/

LIBDEPS = apps/system/openssl apps/perl/perl

DESCRIPTION = Perl extension for using OpenSSL
AUTHOR = Sampo Kellomaki
URL = http://cpan.uwinnipeg.ca/~sampo
LICENSE = OpenSSL

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = LIBS="-L$(PREFIX)/lib  -lssl -lcrypto" INC="-I$(PREFIX)/include/"

ifeq ($(shell uname),Darwin)
	CONFIGURE_ENV = env PERL_MM_USE_DEFAULT=1
else
	CONFIGURE_ENV = env OPENSSL_PREFIX=$(PREFIX) PERL_MM_USE_DEFAULT=1
endif


include ../category.mk

