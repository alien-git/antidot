GARNAME = glite-data-io-gss-auth
GARVERSION = 1.0.0
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION)_src.tar.gz
PATCHFILES = bootstrap.patch configure.ac.patch

MASTER_SITES += webcvs://jra1mw.cvs.cern.ch:8180/cgi-bin/jra1mw.cgi/ 
GARCVSNAME    = org.glite.data.io-gss-auth
GARCVSVERSION = glite-data-io-gss-auth_R_1_0_0
NOCHECKSUM    = $(DISTFILES)

LIBDEPS = apps/base/globus apps/base/log4cpp apps/glite/data-io-quanta apps/glite/glite-data

DESCRIPTION = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

BUILD_ARGS = CPPFLAGS=-I$(GLOBUS_LOCATION)/include/$(GLOBUS_FLAVOR)

ONFIGURE_ARGS = $(DIRPATHS) --with-version=$(GARVERSION) --prefix=$(PREFIX) --with-glite-location=$(PREFIX) --with-dist-location=$(PREFIX) --with-log4cpp-prefix=$(PREFIX) --with-globus-prefix=$(GLOBUS_LOCATION) --with-globus-thr-flavor=$(GLOBUS_FLAVOR)thr --with-globus-nothr-flavor=$(GLOBUS_FLAVOR) --disable-log4cpptest

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); env PREFIX=$(PREFIX) ./bootstrap )


