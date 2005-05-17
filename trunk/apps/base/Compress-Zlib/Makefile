GARNAME = Compress-Zlib
GARVERSION = 1.34
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/P/PM/PMQS/ http://www.cpan.org/authors/id/P/PM/PMQS/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/P/PM/PMQS/

LIBDEPS = apps/base/perl apps/base/zlib

DESCRIPTION = Interface to zlib compression library
AUTHOR = Paul Marquess 
URL = http://cpan.uwinnipeg.ca/~pmqs
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

