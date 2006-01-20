GARNAME = root
GARVERSION = 5.8.0
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = 

MASTER_SITES = 

LIBDEPS = apps/alien/api

DESCRIPTION = ROOT- An Object-Oriented Data Analysis Framework
URL = http://root.cern.ch
AUTHOR = ROOT Team
LICENSE = ROOT
 
CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = env GLOBUS_LOCATION= prefix=
CONFIGURE_ARGS = --prefix=$(PREFIX)/root --etcdir=$(PREFIX)/etc --enable-alien --with-alien-incdir=$(PREFIX)/include --with-alien-libdir=$(PREFIX)/lib/api --disable-xrootd --with-ssl-incdir=$(PREFIX)/include --with-ssl-libdir=$(PREFIX)/lib


include ../category.mk

