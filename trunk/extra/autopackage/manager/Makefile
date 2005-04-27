GARNAME = autopackage-manager
GARVERSION = 1.05
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://alien.cern.ch/cache/ 

LIBDEPS = apps/base/zlib apps/autopackage/autopackage apps/autopackage/gtkfe apps/autopackage/qtfe

DESCRIPTION = Autopackage Package Manager
URL = http://autopackage.org
AUTHOR = 
LICENSE = GPL

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) 

include ../category.mk
