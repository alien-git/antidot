GARNAME = Image-Imlib2
GARVERSION = 1.04
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/L/LB/LBROCARD/ http://search.cpan.org/CPAN/authors/id/L/LB/LBROCARD/ 

LIBDEPS = apps/base/Module-Build apps/gui/imlib2

DESCRIPTION = Interface to the Imlib2 image library
AUTHOR = Leon Brocard 
URL = http://cpan.uwinnipeg.ca/~lbrocard
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Build.PL
BUILD_SCRIPTS = $(WORKSRC)/Build
INSTALL_SCRIPTS = $(WORKSRC)/Build
TEST_SCRIPTS = $(WORKSRC)/Build

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

