GARNAME = imlib2
GARVERSION = 1.2.0
CATEGORIES = libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

LIBDEPS = apps/gui/freetype2 apps/base/edb

MASTER_SITES = http://heanet.dl.sourceforge.net/sourceforge/enlightenment/ http://alien.cern.ch/cache/

DESCRIPTION = imlib2

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --with-edb=$(PREFIX)

include ../category.mk
