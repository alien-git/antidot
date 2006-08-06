GARNAME = luau
GARVERSION = 0.1.9
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://alien.cern.ch/cache/ http://belnet.dl.sourceforge.net/sourceforge/luau/

LIBDEPS =  apps/base/zlib apps/base/libxml2 apps/base/curl

DESCRIPTION = The Lib Update/AutoUpdate Suite
URL = http://luau.sourceforge.net/
AUTHOR = David Eklund
LICENSE = LGPL

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --without-luau-db

include ../category.mk
