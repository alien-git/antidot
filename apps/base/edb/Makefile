GARNAME = edb
GARVERSION = 1.0.5
CATEGORIES = libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

LIBDEPS = 

MASTER_SITES = http://heanet.dl.sourceforge.net/sourceforge/enlightenment/ http://alien.cern.ch/cache/

DESCRIPTION = Enlightenment Database Access Library
URL = http://www.enlightenment.org/pages/edb.html
AUTHOR = Mike Frysinger
LICENSE = EDB

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --without-nls

include ../category.mk
