GARNAME = Archive-Zip
GARVERSION = 1.16
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz



MASTER_SITES = $(CPAN_MIRROR)/authors/id/S/SM/SMPETERS/ http://www.cpan.org/authors/id/S/SM/SMPETERS/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/S/SM/SMPETERS/

LIBDEPS = apps/base/Compress-Zlib

DESCRIPTION = Provides an interface to ZIP archive files
AUTHOR  = Steve Peters
URL     = http://cpan.uwinnipeg.ca/~smpeters
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule Archive::Zip $(GARVERSION)

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

