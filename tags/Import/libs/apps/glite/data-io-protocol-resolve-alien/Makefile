GARNAME = glite-data-protocol-resolve-alien
GARVERSION = 1.0.1
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION)_src.tar.gz
PATCHFILES = bootstrap.patch

GARCVSNAME    = org.glite.data.io-resolve-alien
GARCVSVERSION = glite-data--io-resolve-alien_branch_1_0_0_RC1
NOCHECKSUM    = $(DISTFILES)

MASTER_SITES = webcvs://jra1mw.cvs.cern.ch:8180/cgi-bin/jra1mw.cgi/ http://glite.web.cern.ch/glite/packages/$(GLITE_BUILD)/src/

LIBDEPS = apps/base/globus apps/base/log4cpp apps/glite/glite-data

DESCRIPTION = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --with-version=$(GARVERSION) --prefix=$(PREFIX) --with-glite-location=$(PREFIX) --with-dist-location=$(PREFIX) --with-xercesc-prefix=$(PREFIX) --with-xalanc-prefix=$(PREFIX) --with-log4cpp-prefix=$(PREFIX) --with-mysql-prefix=$(PREFIX) --with-globus-prefix=$(GLOBUS_LOCATION) --with-globus-nothr-flavor=$(GLOBUS_FLAVOR) --with-gsoap-location=$(PREFIX) --with-cgsi-gsoap=$(PREFIX) --with-xerces-location=$(PREFIX) --with-gsoap-version=2.6.2 --with-gsoap-wsdl2h-version=2.6.2

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); env PREFIX=$(PREFIX) ./bootstrap )


