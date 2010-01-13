GARNAME = xrootd-secssl
GARVERSION = 3.0.5
CATEGORIES = apps-libs
DISTNAME  = $(GARNAME)-$(GARVERSION)
DISTFILES = $(DISTNAME).tar.gz
PATCHFILES =

MASTER_SITES = http://project-arda-dev.web.cern.ch/project-arda-dev/alice/xalienfs/

LIBDEPS = apps/base/xrootd

DESCRIPTION = XRootD ssl plugin

URL = http://xrootd.slac.stanford.edu
AUTHOR = Andy Hanushevsky
LICENSE =

CONFIGURE_ENV = CPFLAGS="-I$(PREFIX)/include" CPPFLAGS="-I$(PREFIX)/include" CXXFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64"

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX)/api --with-xrootd-location=$(PREFIX)/api --with-openssl-libdir=$(PREFIX)/lib --with-openssl-incdir=$(PREFIX)/include --with-xml2-incdir=$(PREFIX)/include/libxml2 --with-xml2-libdir=$(PREFIX)/lib

include ../category.mk
