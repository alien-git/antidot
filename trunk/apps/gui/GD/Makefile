GARNAME = GD
GARVERSION = 2.19
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/L/LD/LDS/ http://www.cpan.org/authors/id/L/LD/LDS/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/L/LD/LDS/

LIBDEPS = apps/base/perl apps/gui/gd

DESCRIPTION = Interface to Gd Graphics Library

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = printf "\y\y\n" | env GD_LIBS=$(PREFIX)/lib GD_INC=-I$(PREFIX)/include
 
BUILD_ARGS =  

include ../category.mk

