GARNAME    = gapi-apiservice
GARVERSION = 2.1.9
CATEGORIES = apps-libs
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = 

MASTER_SITES = http://project-arda-dev.web.cern.ch/project-arda-dev/alice/apiservice/

BUILDDEPS = apps/alien/common apps/alien/gssapi apps/base/swig  apps/base/xrootd
LIBDEPS   = apps/alien/perl apps/base/bash apps/base/globus-toolkit apps/base/gsoap2.7 apps/base/cronolog apps/base/xrootd-xrdcpapmon

DESCRIPTION = ARDA/ALICE packages for API Client+Server
URL = http://project-arda-dev.web.cern.ch/project-arda-dev/alice/apiservice
LICENSE =
AUTHOR = Andreas Peters and Derek Feichtinger

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX)/api --with-dist-location=$(PREFIX)/api --sysconfdir=$(PREFIX)/etc --enable-debugmacros --with-perl=$(PREFIX)/bin/perl --enable-gsisoap --with-globus-location=$(GLOBUS_LOCATION) --with-globus-nothr-flavor=$(GLOBUS_FLAVOR) --with-gsoap-soapcpp2=$(PREFIX)/gsoap/bin --enable-debugmacros --disable-readline --enable-perl-module --with-swig=$(PREFIX)/bin --with-xrootd-location=$(PREFIX)/api

include ../category.mk

PRE_INSTALL = (mkdir -p $(PREFIX)/api/etc; cd $(WORKSRC); make clientsrc)
POST_INSTALL = ( cd $(WORKSRC); make install-clientsrc)

