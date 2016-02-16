GARNAME = xrootd-xrd3cp
GARVERSION = 3.0.4
CATEGORIES = apps-libs
DISTNAME  = $(GARNAME)-$(GARVERSION)
DISTFILES = $(GARNAME).tar.gz
NOCHECKSUM = $(DISTFILES)

#ifeq ($(shell uname),Darwin)
#    PATCHFILES = configure.patch
#endif

MASTER_SITES = https://svnweb.cern.ch/trac/CERNXROOT/export/785/trunk/source-tgz/

LIBDEPS = apps/tools/xrootd apps/perl/uuid

DESCRIPTION = Xrootd


URL = http://xrootd.slac.stanford.edu
AUTHOR = Andy Hanushevsky
LICENSE = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ENV = CFLAGS="-I$(PREFIX)/include -I$(PREFIX)/api/include/xrootd -I$(PREFIX)/api/include/xrootd/private" CPPFLAGS="-I$(PREFIX)/include -I$(PREFIX)/api/include/xrootd -I$(PREFIX)/api/include/xrootd/private" CXXFLAGS="-I$(PREFIX)/include -I$(PREFIX)/api/include/xrootd -I$(PREFIX)/api/include/xrootd/private" LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64"
BUILD_ENV = CFLAGS="-I$(PREFIX)/include -I$(PREFIX)/api/include/xrootd -I$(PREFIX)/api/include/xrootd/private" CPPFLAGS="-I$(PREFIX)/include -I$(PREFIX)/api/include/xrootd -I$(PREFIX)/api/include/xrootd/private" CXXFLAGS="-I$(PREFIX)/include -I$(PREFIX)/api/include/xrootd -I$(PREFIX)/api/include/xrootd/private" LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64"
INSTALL_ENV = CFLAGS="-I$(PREFIX)/include -I$(PREFIX)/api/include/xrootd -I$(PREFIX)/api/include/xrootd/private" CPPFLAGS="-I$(PREFIX)/include -I$(PREFIX)/api/include/xrootd -I$(PREFIX)/api/include/xrootd/private" CXXFLAGS="-I$(PREFIX)/include -I$(PREFIX)/api/include/xrootd -I$(PREFIX)/api/include/xrootd/private" LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64"

CONFIGURE_ARGS = --prefix=$(PREFIX)/api --with-xrootd-location=$(PREFIX)/api

include ../category.mk

PRE_CONFIGURE=( if [ "$(shell uname)" = "Darwin" ]; then patch $(WORKSRC)/configure files/configure.patch; fi )