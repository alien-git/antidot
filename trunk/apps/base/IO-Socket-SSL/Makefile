GARNAME = IO-Socket-SSL
GARVERSION = 1.30
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://search.cpan.org/CPAN/authors/id/S/SU/SULLR/IO-Socket-SSL-1.26.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/S/SU/SULLR/

LIBDEPS = apps/base/Net-SSLeay

DESCRIPTION = Nearly transparent SSL encapsulation for IO-Socket-INET
AUTHOR =  Steffen Ullrich & Peter Behroozi & Marko Asplund
URL = http://search.cpan.org/dist/IO-Socket-SSL/
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule IO::Socket::SSL $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

#CONFIGURE_ARGS =  LIBS="-L$(PREFIX)/lib -L$(PREFIX)/lib64" INC="-I$(PREFIX)/include"

BUILD_ARGS =  

include ../category.mk

