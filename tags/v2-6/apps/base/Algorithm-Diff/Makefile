GARNAME = Algorithm-Diff
GARVERSION = 1.1901
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).zip

MASTER_SITES = $(CPAN_MIRROR)/authors/id/T/TY/TYEMQ/ http://www.cpan.org/authors/id/T/TY/TYEMQ/


LIBDEPS = apps/base/perl

AUTHOR  = Tye McQueen
LICENSE = Perl
URL     = http://search.cpan.org/~tyemq

DESCRIPTION =  Compute intelligent differences between two files or lists 

AUTOTEST = testForAliEnPerlModule Algorithm-Diff $(GARVERSION)

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

