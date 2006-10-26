GARNAME = TimeDate
GARVERSION = 1.16
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/G/GB/GBARR/ http://www.cpan.org/authors/id/G/GB/GBARR/

LIBDEPS = apps/base/perl

DESCRIPTION = A complete, easy to use date and time object
AUTHOR = Graham Barr
URL = http://search.cpan.org/~gbarr
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule TimeDate $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

