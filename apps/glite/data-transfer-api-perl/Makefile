GARNAME = glite-data-transfer-api-perl
GARVERSION = 3.0.0
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION)_src.tar.gz

MASTER_SITES += viewvc://jra1mw.cvs.cern.ch:8180/cgi-bin/jra1mw.cgi/ 
GARCVSNAME    = org.glite.data.transfer-api-perl
GARCVSVERSION = glite-data-transfer-api-perl_R_3_0_0_2
NOCHECKSUM    = $(DISTFILES)

LIBDEPS = apps/glite/data-api-perl

DESCRIPTION = gLite data perl API
URL = http://www.glite.org
LICENSE = EGEE

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = 

include ../category.mk

