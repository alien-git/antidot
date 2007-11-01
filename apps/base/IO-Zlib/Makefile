GARNAME = IO-Zlib
GARVERSION = 1.07
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/T/TO/TOMHUGHES/ http://www.cpan.org/authors/id/T/TO/TOMHUGHES/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/T/TO/TOMHUGHES/

LIBDEPS = apps/base/Compress-Zlib

DESCRIPTION = IO style interface to Compress-Zlib
AUTHOR = Tom Hughes
URL = http://cpan.uwinnipeg.ca/~tomhughes
LICENSE = Perl 

AUTOTEST = testForAliEnPerlModule IO::Zlib $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

