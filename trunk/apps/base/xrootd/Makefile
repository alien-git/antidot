GARNAME = xrootd
GARVERSION = 20091102-0415-root
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
#DISTNAME  = $(GARNAME)
NOCHECKSUM = $(DISTFILES)
PATCHFILES =

GARCVSNAME = $(GARNAME)
GARCVSVERSION = $(GARVERSION)
GARCVSREVISION =

MASTER_SITES = svn-http://root.cern.ch/svn/root/vendors/

LIBDEPS = apps/base/ApMon-CPP apps/base/perl apps/base/libxml2 apps/base/openssl apps/base/ml_gsoapclient

DESCRIPTION = Xrootd

URL = http://xrootd.slac.stanford.edu
AUTHOR = Andy Hanushevsky
LICENSE =

CONFIGURE_SCRIPTS = $(WORKSRC)/configure.classic
BUILD_SCRIPTS = $(WORKSRC)/GNUmakefile
INSTALL_SCRIPTS = $(WORKSRC)/GNUmakefile
TEST_SCRIPTS =

CONFIGURE_ARGS =

LOCALPLATFORM = $(shell ../../../platform.sh platform)

ifeq ($(LOCALPLATFORM),i686-apple-darwin8.6.1)
    CONFIGURE_ARGS += macosx --ccflavour=macos
endif

CONFIGURE_ENV = CFLAGS="-I$(PREFIX)/include" CPPFLAGS="-I$(PREFIX)/include" CXXFLAGS="-I$(PREFIX)/include" LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64"
BUILD_ENV = CFLAGS="-I$(PREFIX)/include" CPPFLAGS="-I$(PREFIX)/include" CXXFLAGS="-I$(PREFIX)/include" LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64"
INSTALL_ENV = CFLAGS="-I$(PREFIX)/include" CPPFLAGS="-I$(PREFIX)/include" CXXFLAGS="-I$(PREFIX)/include" LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64"


CONFIGURE_ARGS +=  --prefix=$(PREFIX)/api --enable-perlint --with-ssl-libdir=$(PREFIX)/lib --with-ssl-incdir=$(PREFIX)/include --with-krb5=$(PREFIX)  --with-ssl-shared=yes --enable-gsi --disable-posix --no-arch-subdirs

include ../category.mk

PRE_CONFIGURE = (cd  $(WORKSRC)/src/XrdClient; swig -perl XrdClientAdmin_c.hh)
POST_INSTALL  = (cd $(PREFIX)/api/bin; rm -rf xrdcpapmon;  ln -s xrdcp xrdcpapmon; cd $(PREFIX)/api/lib; rm -rf libcrypto.*  libssl.* ; ln -s ../../lib/libcrypto.* ../../lib/libssl.* .)
