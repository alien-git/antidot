GARNAME = glite-alien-srm
GARVERSION = 2.0.0
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION)_src.tar.gz
NOCHECKSUM = $(DISTFILES)

GARCVSNAME    = org.glite.alien.srm
GARCVSVERSION = glite-alien-srm_branch_2_0_0

MASTER_SITES = webcvs://jra1mw.cvs.cern.ch:8180/cgi-bin/jra1mw.cgi/

LIBDEPS = apps/base/perl apps/base/cgsi-gsoap apps/base/gsoap apps/base/perl

DESCRIPTION = AliEn interface to SRM
URL = http://alien.cern.ch
LICENSE =

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --with-glite-prefix=$(PREFIX) --with-stage-dir=$(PREFIX) --with-build-dir=$(WORKSRC)/build --with-dest-dir=$(PREFIX) --with-globus-prefix=$(GLOBUS_LOCATION) --with-globus-thr-flavor=$(GLOBUS_FLAVOR)thr --with-globus-nothr-flavor=$(GLOBUS_FLAVOR) --with-gsoap=$(PREFIX) --with-cgsi-gsoap=$(PREFIX)

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); env PREFIX=$(PREFIX) ./bootstrap )

