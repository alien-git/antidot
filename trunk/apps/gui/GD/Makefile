GARNAME = GD
GARVERSION = 2.21
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/L/LD/LDS/ http://www.cpan.org/authors/id/L/LD/LDS/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/L/LD/LDS/

LIBDEPS = apps/base/perl apps/gui/gd

DESCRIPTION = Interface to Gd Graphics Library
URL = http://cpan.uwinnipeg.ca/~lds
LICENSE = Artistic
AUTHOR = Lincoln D. Stein

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = printf "$(PREFIX)\n\n\n\n\n" | env GD_LIBS="-L$(PREFIX)/lib" GD_INC=-I$(PREFIX)/include
 
BUILD_ARGS =  

include ../category.mk
