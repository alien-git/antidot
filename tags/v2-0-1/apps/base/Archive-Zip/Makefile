GARNAME = Archive-Zip
GARVERSION = 1.14
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/N/NE/NEDKONZ/ http://www.cpan.org/authors/id/N/NE/NEDKONZ/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/N/NE/NEDKONZ/

LIBDEPS = apps/base/perl apps/base/zlib

DESCRIPTION = Provides an interface to ZIP archive files
AUTHOR  = Ned Konz
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

