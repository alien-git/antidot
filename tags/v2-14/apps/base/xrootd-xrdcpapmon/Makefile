GARNAME = xrootd-xrdcpapmon
GARVERSION = 1.0.5
CATEGORIES = apps-libs
DISTNAME  = $(GARNAME)-$(GARVERSION)
DISTFILES = $(DISTNAME).tar.gz
PATCHFILES = 


MASTER_SITES =  http://project-arda-dev.web.cern.ch/project-arda-dev/xrootd/tarballs/client/

BUILDDEPS = apps/base/xrootd

LIBDEPS = apps/base/ApMon-CPP apps/base/globus-toolkit apps/base/openssl

DESCRIPTION = Xrootd copy command

URL = http://xrootd.slac.stanford.edu
AUTHOR = Andreas Peters
LICENSE = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ARGS = --prefix=$(PREFIX)/api --with-xrootd-location=$(PREFIX)/api --with-apmon-location=$(PREFIX)/api

include ../category.mk

POST_INSTALL = (cd $(PREFIX)/api/lib; ln -s ../../lib/libcrypto.* ../../lib/libssl.* ../../lib/libzlib.* .)
