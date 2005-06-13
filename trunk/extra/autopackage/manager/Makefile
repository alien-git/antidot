GARNAME = autopackage-manager
GARVERSION = 1.05
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://alien.cern.ch/cache/ 

LIBDEPS = apps/base/zlib extra/autopackage/autopackage extra/autopackage/gtkfe extra/autopackage/qtfe

DESCRIPTION = Autopackage Package Manager
URL = http://autopackage.org
AUTHOR = 
LICENSE = GPL

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

QTDIR=$(firstword $(sort $(wildcard /usr/lib/qt-3* /lib/qt-3* /usr/local/lib/qt-3*)))

CONFIGURE_ENV = env QTDIR=$(QTLIB)

CONFIGURE_ARGS = $(DIRPATHS) --enable-frontend-qt --enable-frontend-gtk

include ../category.mk

PRE_CONFIGURE = ( cd $(WORKSRC); autoconf ) 