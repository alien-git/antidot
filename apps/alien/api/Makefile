GARNAME    = alien-api
GARVERSION = 1.0.5a
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION)_src.tar.gz
NOCHECKSUM = $(DISTFILES)
PATCHFILES = macos.diff

GARCVSNAME    = org.glite.alien.apiservice
GARCVSVERSION = alien-apiservice-1_0_5a

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

CONFIGURE_ARGS = --prefix=$(PREFIX) --with-dist-location=$(PREFIX) --enable-debugmacros --with-perl=$(PREFIX)/bin/perl --enable-gsisoap --with-globus-location=$(GLOBUS_LOCATION) --with-globus-nothr-flavor=$(GLOBUS_FLAVOR) --with-gsoap-soapcpp2=$(PREFIX)/bin --with-gsoap-src=$(PREFIX)/share/soapcpp2 --disable-readline --with-perl-module

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); ([ -f bootstrap ] && sh bootstrap) || autoconf )



