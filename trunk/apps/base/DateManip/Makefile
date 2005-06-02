GARNAME = DateManip
GARVERSION = 5.42
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/S/SB/SBECK/ http://www.cpan.org/authors/id/S/SB/SBECK/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/S/SB/SBECK/

LIBDEPS = apps/base/perl

DESCRIPTION = Routines for parsing/manipulating dates and time.
AUTHOR = Sullivan Beck 
URL = http://cpan.uwinnipeg.ca/~sbeck
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule DateManip $(GARVERSION)

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

