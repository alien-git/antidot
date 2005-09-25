GARNAME = xrootd
GARVERSION = 20050728-0310x
CATEGORIES = apps-libs
DISTNAME  = $(GARNAME)newbuild-$(GARVERSION)
DISTFILES = $(DISTNAME).tar.gz
PATCHFILES = 

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

CONFIGURE_ARGS = --prefix=$(PREFIX) --enable-krb5 --enable-perlint --enable-openssl --enable-gsi --enable-tokenauthz --disable-krb5 --with-base-directory=$(PREFIX)

ifeq ($(shell uname -m),ia64)
CONFIGURE_ARGS += --with-xccflavour=gcc
endif

include ../category.mk

#PRE_CONFIGURE = (cd $(WORKSRC); aclocal; autoheader; libtoolize -c; automake -a; autoconf)

POST_INSTALL = ( [ -d $(PREFIX)/opt/xrootd ] && rm -rf $(PREFIX)/opt )
