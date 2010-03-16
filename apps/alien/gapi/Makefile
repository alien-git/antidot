GARNAME = xrootd-xalienfs
GARVERSION = 1.0.11
CATEGORIES = apps-libs
DISTNAME  = $(GARNAME)-$(GARVERSION)
DISTFILES = $(DISTNAME).tar.gz
PATCHFILES = configure.ac.patch

MASTER_SITES = http://project-arda-dev.web.cern.ch/project-arda-dev/alice/xalienfs/

LIBDEPS = apps/base/xrootd-secssl

DESCRIPTION = ARDA/ALICE packages for API Client+Server
URL = http://project-arda-dev.web.cern.ch/project-arda-dev/alice/apiservice
LICENSE =
AUTHOR = Andreas Peters and Derek Feichtinger

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = CFLAGS="-I$(PREFIX)/include" CPPFLAGS="-I$(PREFIX)/include" CXXFLAGS="-I$(PREFIX)/include" LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64"
BUILD_ENV = CFLAGS="-I$(PREFIX)/include" CPPFLAGS="-I$(PREFIX)/include" CXXFLAGS="-I$(PREFIX)/include" LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64"
INSTALL_ENV = CFLAGS="-I$(PREFIX)/include" CPPFLAGS="-I$(PREFIX)/include" CXXFLAGS="-I$(PREFIX)/include" LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64"

CONFIGURE_ARGS = --prefix=$(PREFIX)/api --with-xrootd-location=$(PREFIX)/api --enable-perl-module --with-swig=$(PREFIX) --with-swig-inc=$(PREFIX)/share/swig/1.3.40/ --with-perl=$(PREFIX)/bin/perl --enable-build-server

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); ./bootstrap.sh;)

