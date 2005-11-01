GARNAME = xrootd
GARVERSION = 20050728.0310x4

CATEGORIES = apps-libs
DISTNAME  = $(GARNAME)newbuild-$(GARVERSION)
DISTFILES = $(DISTNAME).tar.gz

ifeq ($(shell uname),Darwin)
PATCHFILES = macos.diff
endif

MASTER_SITES =  http://project-arda-dev.web.cern.ch/project-arda-dev/xrootd/tarballs/

LIBDEPS = apps/base/tokenauthz apps/base/ApMon-CPP apps/base/perl

DESCRIPTION = Xrootd

URL = http://xrootd.slac.stanford.edu
AUTHOR = Peter Elmer
LICENSE = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ARGS = --prefix=$(PREFIX) --enable-perlint --enable-openssl --enable-gsi --enable-tokenauthz --with-base-directory=$(PREFIX)

ifeq ($(shell uname -m),ia64)
CONFIGURE_ARGS += --with-xccflavour=gcc
endif

include ../category.mk

POST_INSTALL = ( rm -rf $(PREFIX)/bin/xrootdutils )
