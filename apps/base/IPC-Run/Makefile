GARNAME = IPC-Run
GARVERSION = 0.79
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/R/RS/RSOD/

LIBDEPS = apps/base/perl 

DESCRIPTION = Helper processes to shovel data to/from parent and child
AUTHOR =  Richard Soderberg
URL = http://cpan.uwinnipeg.ca/~rsod
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule IPC::Run $(GARVERSION)

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

