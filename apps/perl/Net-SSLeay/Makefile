GARNAME = Net-SSLeay
GARVERSION = 1.36
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = 

MASTER_SITES = $(CPAN_MIRROR)/authors/id/F/FL/FLORA/ http://www.cpan.org/authors/id/F/FL/FLORA/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/F/FL/FLORA/

LIBDEPS = apps/system/openssl apps/perl/perl

DESCRIPTION = Perl extension for using OpenSSL
AUTHOR = Sampo Kellomaki
URL = http://cpan.uwinnipeg.ca/~sampo
LICENSE = OpenSSL

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = # $(WORKSRC)/Makefile

CONFIGURE_ARGS = LIBS="-L$(PREFIX)/lib  -lssl -lcrypto" INC="-I$(PREFIX)/include/"

ifeq ($(shell uname),Darwin)
	CONFIGURE_ENV = env PERL_MM_USE_DEFAULT=1
else
	CONFIGURE_ENV = env OPENSSL_PREFIX=$(PREFIX) PERL_MM_USE_DEFAULT=1
endif


include ../category.mk

