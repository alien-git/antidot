GARNAME = Event
GARVERSION = 1.06
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/J/JP/JPRIT/

LIBDEPS = apps/base/perl

DESCRIPTION = Event loop processing
AUTHOR = Joshua Nathaniel Pritikin 
URL = http://search.cpan.org/~jprit/
LICENSE = Artistic

AUTOTEST = testForAliEnPerlModule Event $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  

include ../category.mk

