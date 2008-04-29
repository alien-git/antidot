GARNAME = gsoap2.7
GARVERSION = 2.7.10
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = # gsoap-2.6.2-instsrc.patch

MASTER_SITES = 

LIBDEPS = apps/gcc/gcc

DESCRIPTION = gSOAP Toolkit
URL = http://gsoap2.sourceforge.net/
AUTHOR = 
LICENSE = gSOAP and GPL

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX)/gsoap --enable-ssl --with-openssl=$(PREFIX) 

CONFIGURE_ENV = CFLAGS="-fPIC" CXXFLAGS="-fPIC" CPPFLAGS="-fPIC"

include ../category.mk

