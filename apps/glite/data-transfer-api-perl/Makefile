GARNAME = glite-data-transfer-api-perl
GARVERSION = 1.5.2
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION)_src.tar.gz

MASTER_SITES += webcvs://jra1mw.cvs.cern.ch:8180/cgi-bin/jra1mw.cgi/ 
GARCVSNAME    = org.glite.data.transfer-api-perl
GARCVSVERSION = GLITE_RELEASE_1_1_2
NOCHECKSUM    = $(DISTFILES)

LIBDEPS = apps/glite/glite-data-api-perl

DESCRIPTION = gLite data perl API
URL = http://www.glite.org
LICENSE = EGEE

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = 

include ../category.mk

