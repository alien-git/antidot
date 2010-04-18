GARNAME = Compress-Zlib
GARVERSION = 2.015
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/P/PM/PMQS/ http://www.cpan.org/authors/id/P/PM/PMQS/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/P/PM/PMQS/

LIBDEPS = apps/base/perl apps/base/zlib apps/base/Compress-Raw-Zlib apps/base/Compress-Raw-Bzip2 apps/base/Scalar-List-Utils

DESCRIPTION = Interface to zlib compression library
AUTHOR = Paul Marquess 
URL = http://cpan.uwinnipeg.ca/~pmqs
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule Compress::Zlib $(GARVERSION)

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

