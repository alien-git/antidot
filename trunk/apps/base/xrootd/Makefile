GARNAME = xrootd
GARVERSION = 20050328
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = Makefile.diff

MASTER_SITES =  http://alien.cern.ch/cache/

LIBDEPS = 

DESCRIPTION = Xrootd

URL = http://xrootd.slac.stanford.edu
AUTHOR = Peter Elmer
LICENSE = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ENV = env PREFIX=$(PREFIX)
INSTALL_ARGS = -f Makefile

include ../category.mk

