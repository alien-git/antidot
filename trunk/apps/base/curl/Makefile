GARNAME = curl
GARVERSION = 7.19.5
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://curl.haxx.se/download/curl-7.19.5.tar.gz
MASTER_SITES = http://curl.haxx.se/download/ 

LIBDEPS =  apps/base/zlib

DESCRIPTION = The Lib Update/AutoUpdate Suite
URL = http://luau.sourceforge.net/
AUTHOR = David Eklund
LICENSE = LGPL

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS)  --with-ssl --without-ca-bundle --without-libidn

include ../category.mk
