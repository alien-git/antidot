GARNAME = xrootd-xrd3cp
GARVERSION = 1.0.0
CATEGORIES = apps-libs
DISTNAME  = $(GARNAME)-$(GARVERSION)
DISTFILES = $(GARNAME).tar.gz

ifeq ($(shell uname),Darwin)
    PATCHFILES = configure.patch
endif

MASTER_SITES = https://svnweb.cern.ch/trac/CERNXROOT/export/566/trunk/source-tgz/

LIBDEPS = apps/base/xrootd apps/base/uuid

DESCRIPTION = Xrootd


URL = http://xrootd.slac.stanford.edu
AUTHOR = Andy Hanushevsky
LICENSE = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ARGS = --prefix=$(PREFIX)/api --with-xrootd-location=$(PREFIX)/api

include ../category.mk

