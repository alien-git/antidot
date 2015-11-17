GARNAME = xrootd-xalienfs
GARVERSION = 1.0.14r1
CATEGORIES = apps-libs
DISTNAME  = $(GARNAME)-$(GARVERSION)
DISTFILES = $(DISTNAME).tar.gz
#PATCHFILES = configure.ac.patch
PATCHFILES =

MASTER_SITES = http://aliendb9.cern.ch/src/xalienfs/

LIBDEPS = apps/tools/xrootd apps/system/e2fsprogs apps/tools/cronolog

DESCRIPTION = ARDA/ALICE packages for API Client+Server
URL = http://project-arda-dev.web.cern.ch/project-arda-dev/alice/apiservice
LICENSE =
AUTHOR = Andreas Peters and Derek Feichtinger

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = CFLAGS="-I$(PREFIX)/include -I$(PREFIX)/api/include/xrootd/private" CPPFLAGS="-I$(PREFIX)/include -I$(PREFIX)/api/include/xrootd/private" CXXFLAGS="-I$(PREFIX)/include -I$(PREFIX)/api/include/xrootd/private" LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64"
BUILD_ENV = CFLAGS="-I$(PREFIX)/include -I$(PREFIX)/api/include/xrootd/private" CPPFLAGS="-I$(PREFIX)/include -I$(PREFIX)/api/include/xrootd/private" CXXFLAGS="-I$(PREFIX)/include -I$(PREFIX)/api/include/xrootd/private" LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64"
INSTALL_ENV = CFLAGS="-I$(PREFIX)/include -I$(PREFIX)/api/include/xrootd/private" CPPFLAGS="-I$(PREFIX)/include -I$(PREFIX)/api/include/xrootd/private" CXXFLAGS="-I$(PREFIX)/include -I$(PREFIX)/api/include/xrootd/private" LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64"

ifeq ($(wildcard /usr/share/swig),)
  GAPI_SWIG_INCLUDE = /usr/share/swig2.0
else
  GAPI_SWIG_INCLUDE = $(shell ls -1rd /usr/share/swig/* 2> /dev/null | tail -n1)
endif

ifeq ($(shell uname),Darwin)
CONFIGURE_ARGS = --prefix=$(PREFIX)/api --with-xrootd-location=$(PREFIX)/api
else
CONFIGURE_ARGS = --prefix=$(PREFIX)/api --with-xrootd-location=$(PREFIX)/api --enable-perl-module --with-swig=$(shell which swig) --with-swig-inc=$(GAPI_SWIG_INCLUDE) --with-perl=$(PREFIX)/bin/perl --enable-build-server --disable-readline $(CONFIGURE_ENV)
endif

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC) && sed -i -e '1s|^|\#include <XrdOss/XrdOss.hh>\n|g ; s|XrdNet/XrdNetDNS|XrdSys/XrdSysDNS|g ; s|XrdNetDNS|XrdSysDNS|g' server/XrdxAlienFs.cc && sed -i -e 's|XrdOfsDirectory(user)|XrdOfsDirectory(user, 0)|g ; s|XrdOfsFile(user)|XrdOfsFile(user, 0)|g' server/XrdxAlienFs.hh && autoreconf && ./bootstrap.sh)