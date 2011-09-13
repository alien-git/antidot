GARNAME = autopackage-apbuild
GARVERSION = 1.05
CATEGORIES = apps-devel
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://alien.cern.ch/cache/

LIBDEPS = apps/gcc/gcc

DESCRIPTION = Autopackage build tools
URL = http://autopackage.org
AUTHOR =
LICENSE = GPL

CONFIGURE_SCRIPTS = 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

INSTALL_ENV = env PREFIX=$(PREFIX)

include ../category.mk

