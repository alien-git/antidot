GARNAME = Scalar-List-Utils
GARVERSION = 1.23
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://search.cpan.org/CPAN/authors/id/G/GB/GBARR/Scalar-List-Utils-1.23.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/G/GB/GBARR/

LIBDEPS = apps/base/perl

DESCRIPTION = A selection of general-utility list subroutines  
AUTHOR =  Graham Barr
URL = http://search.cpan.org/~gbarr/Scalar-List-Utils-1.23_02/
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
#TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  LIBS="-L$(PREFIX)/lib" INC="-I$(PREFIX)/include"

BUILD_ARGS =  

include ../category.mk

