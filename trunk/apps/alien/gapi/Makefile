GARNAME = xrootd-xalienfs
GARVERSION = 1.0.14n1
CATEGORIES = apps-libs
DISTNAME  = $(GARNAME)-$(GARVERSION)
DISTFILES = $(DISTNAME).tar.gz
PATCHFILES = configure.ac.patch

MASTER_SITES = http://aliendb9.cern.ch/src/xalienfs/

LIBDEPS = apps/tools/xrootd apps/devel/swig apps/system/e2fsprogs apps/tools/cronolog

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

ifeq ($(shell uname),Darwin)
CONFIGURE_ARGS = --prefix=$(PREFIX)/api --with-xrootd-location=$(PREFIX)/api
else
CONFIGURE_ARGS = --prefix=$(PREFIX)/api --with-xrootd-location=$(PREFIX)/api --enable-perl-module --with-swig=$(PREFIX) --with-swig-inc=$(PREFIX)/share/swig/2.0.3/ --with-perl=$(PREFIX)/bin/perl --enable-build-server --disable-readline
endif

include ../category.mk

#ifeq ($(shell uname -s),Darwin)
	PRE_CONFIGURE = (cd $(WORKSRC) && ./bootstrap.sh)
#endif