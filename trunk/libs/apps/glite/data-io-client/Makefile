GARNAME = glite-data-io-client
GARVERSION = 1.3.1
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION)_src.tar.gz
PATCHFILES = bootstrap.patch utils.patch skipdoc.patch

GARCVSNAME    = org.glite.data.io-client
GARCVSVERSION = glite-data-io-client_branch_1_2_1_RC1
NOCHECKSUM    = $(DISTFILES)

MASTER_SITES = webcvs://jra1mw.cvs.cern.ch:8180/cgi-bin/jra1mw.cgi/ http://glite.web.cern.ch/glite/packages/$(GLITE_BUILD)/src/

LIBDEPS = apps/base/globus apps/base/log4cpp apps/base/globus

DESCRIPTION = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --with-version=$(GARVERSION) --prefix=$(PREFIX) --with-glite-location=$(PREFIX) --with-dist-location=$(PREFIX) --with-log4cpp-prefix=$(PREFIX)--with-log4cpp-prefix=$(PREFIX) --with-globus-prefix=$(GLOBUS_LOCATION) --with-globus-nothr-flavor=$(GLOBUS_FLAVOR) 

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); mkdir build; env PREFIX=$(PREFIX) ./bootstrap )


