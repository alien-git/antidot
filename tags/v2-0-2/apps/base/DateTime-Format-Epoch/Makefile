GARNAME = DateTime-Format-Epoch
GARVERSION = 0.09
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/P/PI/PIJLL/ http://www.cpan.org/authors/id/P/PI/PIJLL/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/P/PI/PIJLL/

LIBDEPS = apps/base/perl apps/base/DateTime

DESCRIPTION = Convert DateTimes to/from epoch seconds
AUTHOR =  Eugene van der Pijll 
URL = http://cpan.uwinnipeg.ca/~pijll
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

