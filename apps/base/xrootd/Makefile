GARNAME = xrootd
GARVERSION = 1.0.1
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = # shift.diff # castor.diff castor1.diff

MASTER_SITES =  http://alien.cern.ch/cache/

LIBDEPS = apps/base/SealedEnvelope apps/base/AuthzXMLreader apps/base/ApMon-CPP

DESCRIPTION = Xrootd

URL = http://xrootd.slac.stanford.edu
AUTHOR = Peter Elmer
LICENSE = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ARGS = --prefix=$(PREFIX) --enable-castor

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); aclocal; autoheader; automake -a; libtoolize -c; autoconf)


