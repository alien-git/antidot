GARNAME = glite-alien-gssapi
GARVERSION = 2.0.0
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION)_src.tar.gz
NOCHECKSUM = $(DISTFILES)

GARCVSNAME    = org.glite.alien.gssapi
GARCVSVERSION = glite-alien-gssapi_branch_2_0_0

MASTER_SITES = webcvs://jra1mw.cvs.cern.ch:8180/cgi-bin/jra1mw.cgi/ 


LIBDEPS = apps/base/perl apps/base/globus apps/base/myproxy

DESCRIPTION = AliEn GSSAPI component
URL = http://alien.cern.ch
LICENSE =

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --with-glite-prefix=$(PREFIX) --with-globus-prefix=$(GLOBUS_LOCATION) --with-globus-nothr-flavor=$(GLOBUS_FLAVOR)

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); env PREFIX=$(PREFIX) GLOBUS_LOCATION=$(GLOBUS_LOCATION) GLOBUS_FLAVOR=$(GLOBUS_FLAVOR) sh ./bootstrap )
