GARNAME = IO-Socket-SSL
GARVERSION = 0.97
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/B/BE/BEHROOZI/ http://www.cpan.org/authors/id/B/BE/BEHROOZI/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/B/BE/BEHROOZI/

LIBDEPS = apps/base/Net_SSLeay.pm

DESCRIPTION = Nearly transparent SSL encapsulation for IO-Socket-INET
AUTHOR =  Peter Behroozi
URL = http://cpan.uwinnipeg.ca/~behroozi
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule IO::Socket::SSL $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

