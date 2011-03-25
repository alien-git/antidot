GARNAME = xrootd-startscript
GARVERSION = 1.2.0
CATEGORIES = apps-libs
DISTNAME  = $(GARNAME)-$(GARVERSION)
DISTFILES = $(DISTNAME).tar.gz
PATCHFILES = 

MASTER_SITES =  http://project-arda-dev.web.cern.ch/project-arda-dev/xrootd/tarballs/start/

LIBDEPS = apps/tools/xrootd

DESCRIPTION = xrootd startscript

URL = http://project-arda-dev.web.cern.ch/project-arda-dev
AUTHOR = Andreas Peters
LICENSE = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ARGS = --prefix=$(PREFIX)/api

include ../category.mk

