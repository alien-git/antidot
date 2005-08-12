GARNAME = Socket6
GARVERSION = 0.18
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/U/UM/UMEMOTO/

LIBDEPS = apps/base/perl

DESCRIPTION = IPv6 related part of the C socket.h defines and structure manipulators 
AUTHOR = Hajimu Umemoto
URL = http://search.cpan.org/~umemoto/
LICENSE = Perl and GPL

AUTOTEST = testForAliEnPerlModule Socket6 $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =

include ../category.mk

