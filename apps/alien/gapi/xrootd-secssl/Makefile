GARNAME = xrootd-secssl
GARVERSION = 3.0.3
CATEGORIES = apps-libs
DISTNAME  = $(GARNAME)-$(GARVERSION)
DISTFILES = $(DISTNAME).tar.gz
PATCHFILES = 

MASTER_SITES = http://project-arda-dev.web.cern.ch/project-arda-dev/alice/xalienfs/

LIBDEPS = apps/gapi/xrootd

DESCRIPTION = XRootD ssl plugin

URL = http://xrootd.slac.stanford.edu
AUTHOR = Andy Hanushevsky
LICENSE =

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX)/root --with-xrootd-location=$(PREFIX)/root --with-openssl-libdir=$(PREFIX)/alien/lib --with-openssl-incdir=$(PREFIX)/alien/include

include ../category.mk



