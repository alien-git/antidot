GARNAME = glite-data-io-base
GARVERSION = 1.3.0
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION)_src.tar.gz
PATCHFILES = bootstrap.patch

GARCVSNAME    = org.glite.data.io-base
GARCVSVERSION = glite-data-io-base_R_1_3_0
NOCHECKSUM    = $(DISTFILES)
MASTER_SITES += webcvs://jra1mw.cvs.cern.ch:8180/cgi-bin/jra1mw.cgi/ 

LIBDEPS = apps/base/globus apps/base/log4cpp apps/glite/data-io-quanta apps/glite/data-io-gss-auth apps/glite/glite-data

DESCRIPTION = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --with-version=$(GARVERSION) --prefix=$(PREFIX) --with-glite-location=$(PREFIX) --with-dist-location=$(PREFIX) --with-xercesc-prefix=$(PREFIX) --with-xalanc-prefix=$(PREFIX) --with-log4cpp-prefix=$(PREFIX)

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); env PREFIX=$(PREFIX) ./bootstrap )


