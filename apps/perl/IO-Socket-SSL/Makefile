GARNAME = IO-Socket-SSL
GARVERSION = 1.83
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://search.cpan.org/CPAN/authors/id/S/SU/SULLR/IO-Socket-SSL-1.76.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/S/SU/SULLR/

LIBDEPS = apps/perl/Net-SSLeay

DESCRIPTION = Nearly transparent SSL encapsulation for IO-Socket-INET
AUTHOR =  Steffen Ullrich & Peter Behroozi & Marko Asplund
URL = http://search.cpan.org/dist/IO-Socket-SSL/
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile


BUILD_ARGS =  

include ../category.mk

