GARNAME = gd
GARVERSION = 2.0.33
CATEGORIES = libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

LIBDEPS = apps/gui/freetype2 apps/gui/t1lib

MASTER_SITES = http://www.boutell.com/gd/http/ http://alien.cern.ch/cache/

DESCRIPTION = GD Graphics Library

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS)

include ../category.mk
