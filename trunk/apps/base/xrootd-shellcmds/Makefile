GARNAME = xrootd-shellcmds
GARVERSION = 1.0.3
CATEGORIES = apps-libs
DISTNAME  = $(GARNAME)-$(GARVERSION)
DISTFILES = $(DISTNAME).tar.gz
PATCHFILES = 


MASTER_SITES =  http://project-arda-dev.web.cern.ch/project-arda-dev/xrootd/tarballs/shell/

BUILDDEPS = apps/base/xrootd
LIBDEPS   = apps/gcc/gcc 

DESCRIPTION = Xrootd shell commands

URL = http://xrootd.slac.stanford.edu
AUTHOR = Andreas Peters
LICENSE = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ARGS = --prefix=$(PREFIX)/api --with-xrootd-location=$(PREFIX)/api

include ../category.mk

