GARNAME = glite-data-io-quanta
GARVERSION = 1.0.0
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION)_src.tar.gz
PATCHFILES = bootstrap.patch

MASTER_SITES += webcvs://jra1mw.cvs.cern.ch:8180/cgi-bin/jra1mw.cgi/ 
GARCVSNAME    = org.glite.data.io-quanta
GARCVSVERSION = glite-data-io-quanta_R_1_0_0
NOCHECKSUM    = $(DISTFILES)

LIBDEPS = apps/base/globus apps/base/log4cpp apps/base/xerces-c apps/base/xalan-c apps/glite/glite-data

DESCRIPTION = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --with-version=$(GARVERSION) --prefix=$(PREFIX) --with-glite-location=$(PREFIX) --with-dist-location=$(PREFIX) --with-xercesc-prefix=$(PREFIX) --with-xalanc-prefix=$(PREFIX) --with-log4cpp-prefix=$(PREFIX)

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); env PREFIX=$(PREFIX) ./bootstrap )

