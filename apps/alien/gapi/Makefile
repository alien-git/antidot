GARNAME = xrootd-xalienfs
GARVERSION = 1.0.14
CATEGORIES = apps-libs
DISTNAME  = $(GARNAME)-$(GARVERSION)
DISTFILES = $(DISTNAME).tar.gz
PATCHFILES = configure.ac.patch

MASTER_SITES = http://project-arda-dev.web.cern.ch/project-arda-dev/alice/xalienfs/

LIBDEPS = apps/base/xrootd-secssl

ifeq ($(shell uname -s),Darwin)
	LIBDEPS += apps/base/readline
endif

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

CONFIGURE_ARGS = --prefix=$(PREFIX)/api --with-xrootd-location=$(PREFIX)/api --enable-perl-module --with-swig=$(PREFIX) --with-swig-inc=$(PREFIX)/share/swig/1.3.40/ --with-perl=$(PREFIX)/bin/perl --enable-build-server --disable-readline

include ../category.mk

ifneq ($(shell uname -s),Darwin) 
	PRE_CONFIGURE = (cd $(WORKSRC); ./bootstrap.sh;)
endif
#just to test
ifeq ($(shell uname -s),Darwin)                                                                                                                                                                                                                                                                                             
    POST_INSTALL = (cd $(PREFIX)/api/lib ; ln -sf ../../lib/libxml2.dylib libxml2.dylib; ln -sf ../../lib/libxml2.a libxml2.a; ln -sf ../../lib/libxml2.2.dylib libxml2.2.dylib)                                                                                                                                                                                              
endif  