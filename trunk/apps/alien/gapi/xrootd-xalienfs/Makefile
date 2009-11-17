GARNAME = xrootd-xalienfs
GARVERSION = 1.0.5
CATEGORIES = apps-libs
DISTNAME  = $(GARNAME)-$(GARVERSION)
DISTFILES = $(DISTNAME).tar.gz
PATCHFILES = configure.ac.patch

MASTER_SITES = http://project-arda-dev.web.cern.ch/project-arda-dev/alice/xalienfs/

LIBDEPS = apps/gapi/xrootd-secssl

DESCRIPTION = ARDA/ALICE packages for API Client+Server
URL = http://project-arda-dev.web.cern.ch/project-arda-dev/alice/apiservice
LICENSE =
AUTHOR = Andreas Peters and Derek Feichtinger

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = CFLAGS="-I$(PREFIX)/alien/include" CPPFLAGS="-I$(PREFIX)/alien/include" CXXFLAGS="-I$(PREFIX)/alien/include" LDFLAGS="-L$(PREFIX)/alien/lib -L$(PREFIX)/alien/lib64"  
BUILD_ENV = CFLAGS="-I$(PREFIX)/alien/include" CPPFLAGS="-I$(PREFIX)/alien/include" CXXFLAGS="-I$(PREFIX)/alien/include" LDFLAGS="-L$(PREFIX)/alien/lib -L$(PREFIX)/alien/lib64"  
INSTALL_ENV = CFLAGS="-I$(PREFIX)/alien/include" CPPFLAGS="-I$(PREFIX)/alien/include" CXXFLAGS="-I$(PREFIX)/alien/include" LDFLAGS="-L$(PREFIX)/alien/lib -L$(PREFIX)/alien/lib64"

CONFIGURE_ARGS = --prefix=$(PREFIX)/root --with-xrootd-location=$(PREFIX)/root  

#--with-readline-libdir=$(PREFIX)/alien/$(TARGET_LIBNAME) --with-readline-incdir=$(PREFIX)/alien/include

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); ./bootstrap.sh;)


