GARNAME = glite-data-io-daemon
GARVERSION = 1.2.0
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION)_src.tar.gz
PATCHFILES = bootstrap.patch
NOCHECKSUM = $(DISTFILES)

GARCVSNAME    = org.glite.data.io-daemon
GARCVSVERSION = glite-data-io-daemon_branch_1_1_1_RC1

MASTER_SITES = webcvs://jra1mw.cvs.cern.ch:8180/cgi-bin/jra1mw.cgi/ http://glite.web.cern.ch/glite/packages/$(GLITE_BUILD)/src/

LIBDEPS = apps/base/globus apps/base/log4cpp apps/glite/data-io-quanta apps/glite/data-io-base

DESCRIPTION = gLite I/O Daemon 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --with-version=$(GARVERSION) --enable-gss-auth --prefix=$(PREFIX) --with-glite-location=$(PREFIX) --with-dist-location=$(PREFIX) --with-globus-prefix=$(GLOBUS_PREFIX) --with-globus-nothr-flavor=$(GLOBUS_FLAVOR) --with-log4cpp-prefix=$(PREFIX)

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); env PREFIX=$(PREFIX) ./bootstrap )

