GARNAME = xrootd
GARVERSION = 20080516-1031
CATEGORIES = apps-libs
DISTNAME  = $(GARNAME)-$(GARVERSION)
DISTFILES = $(DISTNAME).tar.gz
PATCHFILES = 

MASTER_SITES = http://project-arda-dev.web.cern.ch/project-arda-dev/xrootd/tarballs/base/

LIBDEPS = apps/base/ApMon-CPP apps/base/perl apps/base/libxml2 apps/base/openssl # apps/base/globus-toolkit

DESCRIPTION = Xrootd


URL = http://xrootd.slac.stanford.edu
AUTHOR = Andy Hanushevsky
LICENSE = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ARGS = --prefix=$(PREFIX)/api --enable-perlint  --disable-krb4 --disable-krb5 --with-base-directory=$(PREFIX)/api --enable-openssl  --with-openssl-libdir=$(PREFIX)/lib  --with-openssl-incdir=$(PREFIX)/include --disable-posix

ifeq ($(shell uname -m),ia64)
CONFIGURE_ARGS += --with-xccflavour=gcc
endif

include ../category.mk


PRE_CONFIGURE = (cd  $(WORKSRC); sh bootstrap.sh)
POST_INSTALL  = (cd $(PREFIX)/api/lib; rm -rf libcrypto.*  libssl.* libzlib.*; ln -s ../../lib/libcrypto.* ../../lib/libssl.* .; cd ../bin; rm -rf xrdcpapmon;  ln -s xrdcp xrdcpapmon)

