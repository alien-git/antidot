GARNAME = xrootd
GARVERSION = 3.0.4

CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES =  GNUmakerules.patch
NOCHECKSUM = $(DISTFILES) $(PATCHFILES)

MASTER_SITES = http://xrootd.org/download/v3.0.4/

LIBDEPS = apps/tools/ApMon-CPP apps/perl/perl apps/tools/ml_gsoapclient apps/system/openssl

DESCRIPTION = Xrootd

URL = http://xrootd.slac.stanford.edu
AUTHOR = Andy Hanushevsky
LICENSE =

CONFIGURE_SCRIPTS = $(WORKSRC)/configure.classic
BUILD_SCRIPTS = $(WORKSRC)/GNUmakefile
INSTALL_SCRIPTS = $(WORKSRC)/GNUmakefile

ifeq ($(shell uname),Darwin)
	CONFIGURE_ARGS = --enable-ssl --prefix=$(PREFIX)/api --enable-perlint --disable-mon --enable-gsi --disable-posix --no-arch-subdirs
else
	CONFIGURE_ARGS = --build=debug --syslibs=$(PREFIX)/lib --incpfx=$(PREFIX)/include --with-ssl-libdir=$(PREFIX)/lib --with-ssl-incdir=$(PREFIX)/include --prefix=$(PREFIX)/api --enable-perlint --disable-mon --enable-gsi --disable-posix --no-arch-subdirs
endif

CONFIGURE_ENV = CFLAGS="-I$(PREFIX)/include" CPPFLAGS="-I$(PREFIX)/include" CXXFLAGS="-I$(PREFIX)/include" LDFLAGS="-L$(PREFIX)/lib"
BUILD_ENV = CFLAGS="-I$(PREFIX)/include" CPPFLAGS="-I$(PREFIX)/include" CXXFLAGS="-I$(PREFIX)/include" LDFLAGS="-L$(PREFIX)/lib"
INSTALL_ENV = CFLAGS="-I$(PREFIX)/include" CPPFLAGS="-I$(PREFIX)/include" CXXFLAGS="-I$(PREFIX)/include" LDFLAGS="-L$(PREFIX)/lib"

include ../category.mk

PRE_CONFIGURE = (cd  $(WORKSRC)/src/XrdClient;  swig -perl XrdClientAdmin_c.hh)


POST_INSTALL  = (cd $(PREFIX)/api/bin; rm -rf xrdcpapmon;  ln -s xrdcp xrdcpapmon)
