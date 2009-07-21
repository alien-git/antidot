GARNAME = xrootd
GARVERSION = 20090721.1409
CATEGORIES = apps-libs
DISTNAME  = $(GARNAME)-$(GARVERSION)
DISTFILES = $(DISTNAME).tar.gz
PATCHFILES = 

MASTER_SITES = http://project-arda-dev.web.cern.ch/project-arda-dev/xrootd/tarballs/base/

LIBDEPS = apps/base/ApMon-CPP apps/base/perl apps/base/libxml2 apps/base/openssl apps/base/ml_gsoapclient

DESCRIPTION = Xrootd


URL = http://xrootd.slac.stanford.edu
AUTHOR = Andy Hanushevsky
LICENSE = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure.classic
BUILD_SCRIPTS = $(WORKSRC)/GNUMakefile
INSTALL_SCRIPTS = $(WORKSRC)/GNUMakefile
TEST_SCRIPTS = 

CONFIGURE_ARGS = --no-arch-subdirs --prefix=$(PREFIX)/api --enable-perlint --with-ssl=$(PREFIX) --with-krb5=$(PREFIX)

#ifeq ($(shell uname -s),Darwin)
#CONFIGURE_ARGS = --prefix=$(PREFIX)/api --enable-perlint  --disable-krb4 --disable-krb5 --with-base-directory=$(PREFIX)/api --enable-openssl
#else
#CONFIGURE_ARGS = --prefix=$(PREFIX)/api --enable-perlint  --disable-krb4 --disable-krb5 --with-base-directory=$(PREFIX)/api --enable-openssl  --with-openssl-libdir=$(PREFIX)/lib  --with-openssl-incdir=$(PREFIX)/include
#endif

#ifeq ($(shell uname -m),ia64)
#CONFIGURE_ARGS += --with-xccflavour=gcc
#endif

include ../category.mk

#we don't need the bootstrapping
#PRE_CONFIGURE = (cd  $(WORKSRC);touch configure.in Makefile.in src/Makefile_include && sh bootstrap.sh; cd $(PREFIX)/api/lib; rm -rf libcrypto.*  libssl.* ; ln -s ../../lib/libcrypto.* ../../lib/libssl.* .)
# Recompute the platform-dependent perl integration
PRE_CONFIGURE = (cd  $(WORKSRC)/src/XrdClient; swig -perl XrdClientAdmin_c.hh)
POST_INSTALL  = (cd $(PREFIX)/api/bin; rm -rf xrdcpapmon;  ln -s xrdcp xrdcpapmon; cd $(PREFIX)/api/lib; rm -rf libcrypto.*  libssl.* ; ln -s ../../lib/libcrypto.* ../../lib/libssl.* .)

