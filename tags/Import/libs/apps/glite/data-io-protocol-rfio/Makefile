GARNAME = glite-data-io-protocol-rfio
GARVERSION = 1.3.0
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION)_src.tar.gz
PATCHFILES = bootstrap.patch

GARCVSNAME    = org.glite.data.io-protocol-rfio
GARCVSVERSION = glite-data-io-protocol-rfio_branch_1_2_0_RC1
NOCHECKSUM    = $(DISTFILES)

MASTER_SITES = webcvs://jra1mw.cvs.cern.ch:8180/cgi-bin/jra1mw.cgi/ http://glite.web.cern.ch/glite/packages/$(GLITE_BUILD)/src/

LIBDEPS = apps/base/globus apps/base/log4cpp apps/base/xerces-c

DESCRIPTION = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --with-version=$(GARVERSION) --prefix=$(PREFIX) --with-glite-location=$(PREFIX) --with-dist-location=$(PREFIX) --with-log4cpp-prefix=$(PREFIX) --disable-log4cpptest

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); env PREFIX=$(PREFIX) ./bootstrap )


