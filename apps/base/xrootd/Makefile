GARNAME = xrootd
GARVERSION = 20070323-0300-alice-patch1
CATEGORIES = apps-libs
DISTNAME  = $(GARNAME)-$(GARVERSION)
DISTFILES = $(DISTNAME).tar.gz
PATCHFILES = 

MASTER_SITES =  http://project-arda-dev.web.cern.ch/project-arda-dev/xrootd/tarballs/

LIBDEPS = apps/base/tokenauthz apps/base/ApMon-CPP apps/base/perl apps/base/libxml2

DESCRIPTION = Xrootd

URL = http://xrootd.slac.stanford.edu
AUTHOR = Andy Hanushevsky
LICENSE = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ARGS = --prefix=$(PREFIX)/api --enable-perlint --enable-openssl --enable-gsi --enable-tkauthz --disable-krb4 --disable-krb5 --with-base-directory=$(PREFIX)/api --with-globus-location=$(PREFIX)/globus --with-globus-flavor=$(GLOBUS_FLAVOR) --enable-globusssl

ifeq ($(shell uname -m),ia64)
CONFIGURE_ARGS += --with-xccflavour=gcc
endif

include ../category.mk

POST_INSTALL = ( cd $(WORKSRC); make install-source)
