GARNAME = Crypt-OpenSSL-X509
GARVERSION = 1.4
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://search.cpan.org/CPAN/authors/id/D/DA/DANIEL/Crypt-OpenSSL-X509-1.4.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/D/DA/DANIEL/

LIBDEPS = apps/system/openssl apps/perl/perl

DESCRIPTION = Perl extension to OpenSSL's X509 API.  
AUTHOR = Dan Sully
URL = http://search.cpan.org/~daniel/
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = LIBS="-L$(PREFIX)/lib -lssl -lcrypto" INC="-I$(PREFIX)/include/"

BUILD_ARGS =  

include ../category.mk

