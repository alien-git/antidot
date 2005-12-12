GARNAME    = alien-api
GARVERSION = 1.0.5d
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION)_src.tar.gz
NOCHECKSUM = $(DISTFILES)
PATCHFILES = 

GARCVSNAME    = org.glite.alien.apiservice
GARCVSVERSION = alien-apiservice-1_0_5d

MASTER_SITES = webcvs://jra1mw.cvs.cern.ch:8180/cgi-bin/jra1mw.cgi/ 

BUILDDEPS = apps/alien/common apps/alien/gssapi
LIBDEPS   = apps/alien/perl apps/base/bash apps/base/cgsi-gsoap

DESCRIPTION = AliEn API
URL = http://alien.cern.ch
LICENSE =

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_TARGET = install-client

CONFIGURE_ARGS = --prefix=$(PREFIX)/api --with-dist-location=$(PREFIX)/api --sysconfdir=$(PREFIX)/etc --enable-debugmacros --with-perl=$(PREFIX)/bin/perl --enable-gsisoap --with-globus-location=$(GLOBUS_LOCATION) --with-globus-nothr-flavor=$(GLOBUS_FLAVOR) --with-gsoap-soapcpp2=$(PREFIX)/bin --with-gsoap-src=$(PREFIX)/share/soapcpp2 --disable-readline --enable-perl-module --with-swig=$(PREFIX)/bin

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); ([ -f bootstrap ] && sh bootstrap) || autoconf )
PRE_INSTALL = (mkdir -p $(PREFIX)/api/etc)

