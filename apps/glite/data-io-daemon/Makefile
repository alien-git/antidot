GARNAME = glite-data-io-daemon
GARVERSION = 1.2.1
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION)_src.tar.gz
PATCHFILES = bootstrap.patch
NOCHECKSUM = $(DISTFILES)

GARCVSNAME    = org.glite.data.io-daemon
GARCVSVERSION = glite-data-io-daemon_R_1_2_1
MASTER_SITES += webcvs://jra1mw.cvs.cern.ch:8180/cgi-bin/jra1mw.cgi/ 

LIBDEPS = apps/glite/data-io-base 

DESCRIPTION = gLite I/O Daemon 
URL = http://www.glite.org
LICENSE = EGEE

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --with-version=$(GARVERSION) --enable-gss-auth --prefix=$(PREFIX) --with-glite-location=$(PREFIX) --with-dist-location=$(PREFIX) --with-globus-prefix=$(GLOBUS_LOCATION) --with-globus-nothr-flavor=$(GLOBUS_FLAVOR) --with-log4cpp-prefix=$(PREFIX)

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); env PREFIX=$(PREFIX) ./bootstrap )

