GARNAME = Archive-Tar
GARVERSION = 1.23
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/K/KA/KANE/ http://www.cpan.org/authors/id/K/KA/KANE/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/K/KA/KANE/

LIBDEPS = apps/base/perl apps/base/IO-Zlib apps/base/IO-String

AUTHOR  = Nikolay Pelov
LICENSE = Perl

DESCRIPTION = Read, write and manipulate tar files

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

