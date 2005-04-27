GARNAME = curl
GARVERSION = 7.13.2
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://alien.cern.ch/cache/ 

LIBDEPS = # apps/base/zlib

DESCRIPTION = The Lib Update/AutoUpdate Suite
URL = http://luau.sourceforge.net/
AUTHOR = David Eklund
LICENSE = LGPL

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS)  --without-ssl --without-ca-bundle --without-libidn

include ../category.mk
