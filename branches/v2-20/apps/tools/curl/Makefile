GARNAME = curl
GARVERSION = 7.19.7
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://curl.haxx.se/download/curl-7.19.5.tar.gz
MASTER_SITES = http://curl.haxx.se/download/ 

LIBDEPS = apps/gcc/gcc apps/system/openssl

DESCRIPTION = The Lib Update/AutoUpdate Suite
URL = http://luau.sourceforge.net/
AUTHOR = David Eklund
LICENSE = LGPL

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS)  --with-ssl=$(PREFIX) --without-ca-bundle --without-libidn  --disable-ldap --disable-ldaps

include ../category.mk
