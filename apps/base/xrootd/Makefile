GARNAME = xrootd
GARVERSION = 20091104.1102
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
#DISTNAME  = $(GARNAME)
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

CONFIGURE_ARGS =

LOCALPLATFORM = $(shell ../../../platform.sh platform)

ifeq ($(LOCALPLATFORM),i686-apple-darwin8.6.1)
    CONFIGURE_ARGS += macosx --ccflavour=macos
endif

CONFIGURE_ARGS +=  --no-arch-subdirs --prefix=$(PREFIX)/api --enable-perlint --with-ssl=$(PREFIX) --with-krb5=$(PREFIX)  --incpfx=$(PREFIX)/include --syslibs=$(PREFIX)/lib  --with-ssl-shared=yes

include ../category.mk

PRE_CONFIGURE = (cd  $(WORKSRC)/src/XrdClient; swig -perl XrdClientAdmin_c.hh)
POST_INSTALL  = (cd $(PREFIX)/api/bin; rm -rf xrdcpapmon;  ln -s xrdcp xrdcpapmon; cd $(PREFIX)/api/lib; rm -rf libcrypto.*  libssl.* ; ln -s ../../lib/libcrypto.* ../../lib/libssl.* .)
