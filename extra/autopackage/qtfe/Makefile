GARNAME = autopackage-qtfe
GARVERSION = 1.05
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://alien.cern.ch/cache/ 

LIBDEPS = # apps/base/zlib

DESCRIPTION = Autopackage QT frontend
URL = http://autopackage.org
AUTHOR = 
LICENSE = GPL

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS  = $(WORKSRC)/Makefile 
INSTALL_SCRIPTS = 

CONFIGURE_ARGS = $(DIRPATHS) 

include ../category.mk

POST_INSTALL = ( cp -f $(WORKSRC)/bin/* $(PREFIX)/bin )
