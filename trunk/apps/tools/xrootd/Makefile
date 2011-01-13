GARNAME = xrootd
GARVERSION = 20101014-1447

CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://project-arda-dev.web.cern.ch/project-arda-dev/xrootd/tarballs/base/

LIBDEPS = apps/tools/ApMon-CPP apps/perl/perl apps/system/libxml2 apps/system/openssl apps/tools/ml_gsoapclient

DESCRIPTION = Xrootd

URL = http://xrootd.slac.stanford.edu
AUTHOR = Andy Hanushevsky
LICENSE =

ifeq ($(shell uname),Darwin)
    CONFIGURE_SCRIPTS = $(WORKSRC)/configure
    BUILD_SCRIPTS = $(WORKSRC)/Makefile
    INSTALL_SCRIPTS = $(WORKSRC)/Makefile
    
    CONFIGURE_ARGS = --with-base-directory=$(PREFIX) --prefix=$(PREFIX)/api --enable-perlint --disable-mon --with-xml2-incdir=$(PREFIX)/include/libxml2 --with-xml2-libdir=$(PREFIX)/lib --with-openssl-libdir=$(PREFIX)/lib --with-openssl-incdir=$(PREFIX)/include --enable-gsi --disable-posix --enable-secssl --disable-apps
else
    CONFIGURE_SCRIPTS = $(WORKSRC)/configure.classic
    BUILD_SCRIPTS = $(WORKSRC)/GNUmakefile
    INSTALL_SCRIPTS = $(WORKSRC)/GNUmakefile
    
    CONFIGURE_ARGS = --syslibs=$(PREFIX)/lib --incpfx=$(PREFIX)/include --prefix=$(PREFIX)/api --enable-perlint --disable-mon --with-xml-incdir=$(PREFIX)/include/libxml2 --with-xml-libdir=$(PREFIX)/lib --with-ssl-libdir=$(PREFIX)/lib --with-ssl-incdir=$(PREFIX)/include --with-krb5=$(PREFIX)  --with-ssl-shared=yes --enable-gsi --disable-posix --no-arch-subdirs
endif

CONFIGURE_ENV = CFLAGS="-I$(PREFIX)/include" CPPFLAGS="-I$(PREFIX)/include" CXXFLAGS="-I$(PREFIX)/include" LDFLAGS="-L$(PREFIX)/lib"
BUILD_ENV = CFLAGS="-I$(PREFIX)/include" CPPFLAGS="-I$(PREFIX)/include" CXXFLAGS="-I$(PREFIX)/include" LDFLAGS="-L$(PREFIX)/lib"
INSTALL_ENV = CFLAGS="-I$(PREFIX)/include" CPPFLAGS="-I$(PREFIX)/include" CXXFLAGS="-I$(PREFIX)/include" LDFLAGS="-L$(PREFIX)/lib"

include ../category.mk

#PRE_CONFIGURE = (cd  $(WORKSRC)/src/XrdClient; swig -perl XrdClientAdmin_c.hh)

ifeq ($(shell uname),Darwin)
    PRE_CONFIGURE = (cd  $(WORKSRC) && ./bootstrap.sh ; cd src/XrdClient && swig -perl XrdClientAdmin_c.hh)
else
    PRE_CONFIGURE = (cd  $(WORKSRC)/src/XrdClient;  swig -perl XrdClientAdmin_c.hh)
endif

ifeq ($(shell uname),Darwin)
	POST_INSTALL  = (cd $(PREFIX)/api/bin; rm -rf xrdcpapmon;  ln -s xrdcp xrdcpapmon; cd $(PREFIX)/api/lib; rm -rf libcrypto.*  libssl.* libxml2.* libz.*; ln -s ../../lib/libcrypto.* ../../lib/libssl.* ../../lib/libxml2.*)
else
	POST_INSTALL  = (cd $(PREFIX)/api/bin; rm -rf xrdcpapmon;  ln -s xrdcp xrdcpapmon; cd $(PREFIX)/api/lib; rm -rf libcrypto.*  libssl.* libxml2.* libz.*; ln -s ../../lib/libcrypto.* ../../lib/libssl.* ../../lib/libxml2.* ../../lib/libz.* .)
endif
