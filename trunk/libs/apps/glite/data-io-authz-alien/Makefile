GARNAME = glite-data-io-authz-alien
GARVERSION = 1.1.0
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION)_src.tar.gz
PATCHFILES = bootstrap.patch

GARCVSNAME    = org.glite.data.io-authz-alien
GARCVSVERSION = HEAD
NOCHECKSUM    = $(DISTFILES)

MASTER_SITES = webcvs://jra1mw.cvs.cern.ch:8180/cgi-bin/jra1mw.cgi/ http://glite.web.cern.ch/glite/packages/$(GLITE_BUILD)/src/

LIBDEPS = apps/base/globus apps/server/mysql apps/base/gsoap  apps/base/cgsi-gsoap  apps/base/xerces-c apps/glite/data-io-daemon 

DESCRIPTION = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --with-version=$(GARVERSION) --prefix=$(PREFIX) --with-glite-location=$(PREFIX) --with-dist-location=$(PREFIX) --with-xercesc-prefix=$(PREFIX) --with-xalanc-prefix=$(PREFIX) --with-log4cpp-prefix=$(PREFIX) --with-mysql-prefix=$(PREFIX) --with-globus-prefix=$(GLOBUS_LOCATION) --with-globus-nothr-flavor=$(GLOBUS_FLAVOR) --with-gsoap-location=$(PREFIX) --with-cgsi-gsoap=$(PREFIX) --with-xerces-location=$(PREFIX) --with-gsoap-version=2.6.2 --with-gsoap-wsdl2h-version=2.6.2

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); env PREFIX=$(PREFIX) ./bootstrap )


