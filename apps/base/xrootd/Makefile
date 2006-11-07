GARNAME = xrootd
GARVERSION = 20060928-1600-poll16
CATEGORIES = apps-libs
DISTNAME  = $(GARNAME)-$(GARVERSION)
DISTFILES = $(DISTNAME).tar.gz
PATCHFILES = 

MASTER_SITES =  http://project-arda-dev.web.cern.ch/project-arda-dev/xrootd/tarballs/

LIBDEPS = apps/base/tokenauthz apps/base/ApMon-CPP apps/base/perl apps/base/libxml2

DESCRIPTION = Xrootd

URL = http://xrootd.slac.stanford.edu
AUTHOR = Peter Elmer
LICENSE = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ARGS = --prefix=$(PREFIX)/api --enable-perlint --enable-openssl --enable-gsi --enable-tkauthz --disable-krb4 --disable-krb5 --with-base-directory=$(PREFIX)/api --with-openssl-libdir=$(PREFIX)/lib --with-openssl-incdir=$(PREFIX)/include

ifeq ($(shell uname -m),ia64)
CONFIGURE_ARGS += --with-xccflavour=gcc
endif

include ../category.mk

