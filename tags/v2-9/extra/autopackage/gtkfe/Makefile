GARNAME = autopackage-gtkfe
GARVERSION = 1.05
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://alien.cern.ch/cache/ 

LIBDEPS = apps/base/zlib extra/autopackage/autopackage

DESCRIPTION = Autopackage GTK frontend
URL = http://autopackage.org
AUTHOR = David Eklund
LICENSE = LGPL

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) 

include ../category.mk


PRE_CONFIGURE = (cd $(WORKSRC); aclocal; autoheader; automake -a; libtoolize -c --force ; autoconf)
