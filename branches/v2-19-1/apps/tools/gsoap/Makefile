GARNAME = gsoap
GARVERSION = 2.8.5
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)_$(GARVERSION).zip
DISTNAME = $(GARNAME)-2.8
PATCHFILES = 

MASTER_SITES = http://puzzle.dl.sourceforge.net/sourceforge/gsoap2/

LIBDEPS = apps/gcc/gcc

DESCRIPTION = gSOAP Toolkit
URL = http://gsoap2.sourceforge.net/
AUTHOR = 
LICENSE = gSOAP and GPL

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX)/gsoap --enable-ssl

CONFIGURE_ENV = CFLAGS="-fPIC -I$(PREFIX)/include -L$(PREFIX)/lib" CXXFLAGS="-fPIC  -I$(PREFIX)/include -L$(PREFIX)/lib" CPPFLAGS="-fPIC  -I$(PREFIX)/include -L$(PREFIX)/lib"

include ../category.mk

POST_INSTALL = (cp $(WORKSRC)/gsoap/stdsoap2.h $(PREFIX)/include)
