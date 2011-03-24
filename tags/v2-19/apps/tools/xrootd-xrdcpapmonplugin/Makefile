GARNAME = xrootd-xrdcpapmonplugin
GARVERSION = 1.1.0
CATEGORIES = apps-libs
DISTNAME  = $(GARNAME)-$(GARVERSION)
DISTFILES = $(DISTNAME).tar.gz

MASTER_SITES =  http://project-arda-dev.web.cern.ch/project-arda-dev/xrootd/tarballs/xrdcpapmonplugin/

LIBDEPS = apps/tools/ApMon-CPP apps/tools/xrootd

DESCRIPTION = xrdcp plugin for ApMon

URL = http://xrootd.slac.stanford.edu
AUTHOR = Fabrizio Furano
LICENSE = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ARGS = --prefix=$(PREFIX)/api --with-xrootd-location=$(PREFIX)/api --with-apmon-location=$(PREFIX)/api

include ../category.mk

