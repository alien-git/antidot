GARNAME    = glite-alien-apiservice
GARVERSION = 1.0.1
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION)_src.tar.gz
NOCHECKSUM = $(DISTFILES)

GARCVSNAME    = org.glite.alien.apiservice
GARCVSVERSION = glite-alien-apiservice_branch_1_0_0

MASTER_SITES = http://glite.web.cern.ch/glite/packages/$(GLITE_BUILD)/src/ webcvs://jra1mw.cvs.cern.ch:8180/cgi-bin/jra1mw.cgi/ 

LIBDEPS = apps/base/perl apps/alien/perl apps/base/openssl apps/base/gsoap apps/glite/glite 

DESCRIPTION = AliEn API

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --with-dist-location=$(PREFIX) -with-glite-location=$(PREFIX) --enable-debugmacros --with-aio=no --with-aio-header=$(PREFIX)/include/glite/data/io/daemon --with-perl=$(PREFIX)/bin/perl --with-aio-lib=$(PREFIX)/lib --enable-gsisoap --with-globus-location=$(GLOBUS_LOCATION) --with-globus-nothr-flavor=$(GLOBUS_FLAVOR) --with-gsoap-soapcpp2=$(PREFIX)/bin --with-gsoap-src=$(PREFIX)/share/soapcpp2 --disable-readline 

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); mkdir -p $(PREFIX)/share/glite/project;  cp -R $(PREFIX)/share/glite/project/* project; ( [ -f bootstrap ] && sh bootstrap) || autoconf )

