GARNAME = xrootd
GARVERSION = 3.3.6

CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
#PATCHFILES =  GNUmakerules.patch openssl098f.patch
PATCHFILES =
NOCHECKSUM = $(DISTFILES) $(PATCHFILES)

MASTER_SITES = http://alitorrent.cern.ch/src/xrd3/repository/

LIBDEPS = apps/tools/ApMon-CPP apps/perl/perl apps/system/libxml2 apps/system/openssl apps/tools/ml_gsoapclient apps/devel/pcre

DESCRIPTION = Xrootd

URL = http://xrootd.slac.stanford.edu
AUTHOR = Andy Hanushevsky
LICENSE =

CONFIGURE_SCRIPTS = $(WORKSRC)/cmake.ng
BUILD_SCRIPTS = $(WORKSRC)/cmake.ng
INSTALL_SCRIPTS = $(WORKSRC)/cmake.ng

CONFIGURE_ARGS = -DCMAKE_INSTALL_PREFIX=$(PREFIX)/api \
                 -DCMAKE_INSTALL_LIBDIR=$(PREFIX)/api/lib \
                 -DENABLE_CRYPTO=TRUE \
                 -DENABLE_PERL=TRUE \
                 -DENABLE_KRB5=TRUE \
                 -DCMAKE_BUILD_TYPE=RelWithDebInfo \
                 -DOPENSSL_ROOT_DIR=$(PREFIX) \
                 -DKERBEROS5_ROOT_DIR=$(PREFIX) \
                 -DREADLINE_ROOT_DIR=$(PREFIX) \
                 -DREADLINE_INCLUDE_DIR=$(PREFIX)/include \
                 -DZLIB_ROOT=$(PREFIX)

CONFIGURE_ENV = CFLAGS="-I$(PREFIX)/include" CPPFLAGS="-I$(PREFIX)/include" CXXFLAGS="-I$(PREFIX)/include" LDFLAGS="-L$(PREFIX)/lib"
BUILD_ENV = CFLAGS="-I$(PREFIX)/include" CPPFLAGS="-I$(PREFIX)/include" CXXFLAGS="-I$(PREFIX)/include" LDFLAGS="-L$(PREFIX)/lib"
INSTALL_ENV = CFLAGS="-I$(PREFIX)/include" CPPFLAGS="-I$(PREFIX)/include" CXXFLAGS="-I$(PREFIX)/include" LDFLAGS="-L$(PREFIX)/lib"

ifneq ($(shell uname),Darwin)
  BUILD_ENV += MAKEFLAGS=-j$(shell grep -c bogomips /proc/cpuinfo)
endif

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC)/src/XrdClient && swig -perl XrdClientAdmin_c.hh)

ifeq ($(shell uname),Darwin)
        POST_INSTALL  = (cd $(PREFIX)/api/bin; rm -rf xrdcpapmon;  ln -s xrdcp xrdcpapmon)
else
        POST_INSTALL  = (cd $(PREFIX)/api/bin; rm -rf xrdcpapmon;  ln -s xrdcp xrdcpapmon; cd $(PREFIX)/api/lib; rm -rf libcrypto.*  libssl.* libxml2.* libz.*; ln -s ../../lib/libcrypto.* ../../lib/libssl.* ../../lib/libxml2.* ../../lib/libz.* .)
endif
