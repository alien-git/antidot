GARNAME = xrootd-xrd3cp
GARVERSION = 1.0.0
CATEGORIES = apps-libs
DISTNAME  = $(GARNAME)-$(GARVERSION)
DISTFILES = $(GARNAME).tar.gz
PATCHFILES = 

MASTER_SITES = https://svnweb.cern.ch/trac/CERNXROOT/export/229/trunk/source-tgz/

LIBDEPS = apps/base/xrootd apps/base/uuid

DESCRIPTION = Xrootd


URL = http://xrootd.slac.stanford.edu
AUTHOR = Andy Hanushevsky
LICENSE = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ENV = env CPPFLAGS=" -L$(PREFIX)/lib  -L$(PREFIX)/lib64" LDFLAGS=" -L$(PREFIX)/lib  -L$(PREFIX)/lib64" CFLAGS=" -L$(PREFIX)/lib -L$(PREFIX)/lib64"
CONFIGURE_ARGS = --prefix=$(PREFIX)/api --with-xrootd-location=$(PREFIX)/api

include ../category.mk

PRE_CONFIGURE = (cd  $(WORKSRC) && sh bootstrap.sh)

