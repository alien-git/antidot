GARNAME    = gapi-apiservice
GARVERSION = 2.0.0
CATEGORIES = apps-libs
DISTFILES  = $(GARNAME)-$(GARVERSION)d.tar.gz
PATCHFILES = # gclient.cxx.diff

MASTER_SITES = http://project-arda-dev.web.cern.ch/project-arda-dev/alice/apiservice/

BUILDDEPS = apps/alien/common apps/alien/gssapi
LIBDEPS   = apps/alien/perl apps/base/bash apps/base/cgsi-gsoap

DESCRIPTION = ARDA/ALICE packages for API Client+Server
URL = http://project-arda-dev.web.cern.ch/project-arda-dev/alice/apiservice
LICENSE =
AUTHOR = Andreas Peters and Derek Feichtinger

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX)/api --with-dist-location=$(PREFIX)/api --sysconfdir=$(PREFIX)/etc --enable-debugmacros --with-perl=$(PREFIX)/bin/perl --enable-gsisoap --with-globus-location=$(GLOBUS_LOCATION) --with-globus-nothr-flavor=$(GLOBUS_FLAVOR) --with-gsoap-soapcpp2=$(PREFIX)/bin --with-gsoap-src=$(PREFIX)/share/soapcpp2 --enable-debugmacros --disable-readline --enable-perl-module --with-swig=$(PREFIX)/bin

include ../category.mk

PRE_INSTALL = (mkdir -p $(PREFIX)/api/etc)

