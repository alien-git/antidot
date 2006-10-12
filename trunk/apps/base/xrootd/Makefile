GARNAME = xrootd
#GARVERSION = 20060928-1600
GARVERSION = 20060928-1600-poll16
#GARVERSION= 20060523-1741-p1
CATEGORIES = apps-libs
DISTNAME  = $(GARNAME)-$(GARVERSION)
DISTFILES = $(DISTNAME).tar.gz
PATCHFILES = # macos.diff apmon.diff

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

CONFIGURE_ARGS = --prefix=$(PREFIX)/api --enable-perlint --enable-openssl --enable-gsi --enable-tokenauthz --disable-krb4 --disable-krb5 --with-base-directory=$(PREFIX)/api --with-openssl-libdir=$(PREFIX)/lib --with-openssl-incdir=$(PREFIX)/include

ifeq ($(shell uname -m),ia64)
CONFIGURE_ARGS += --with-xccflavour=gcc
endif

include ../category.mk

PRE_CONFIGURE = ( echo "PRE CONFIGURE" && cd $(WORKSRC) && $(PREFIX)/bin/aclocal && $(PREFIX)/bin/automake -a && $(PREFIX)/bin/autoconf )
POST_INSTALL = ( rm -rf $(PREFIX)/bin/xrootdutils )
