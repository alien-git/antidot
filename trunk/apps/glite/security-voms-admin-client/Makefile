GARNAME = glite-security-voms-admin-client
GARVERSION = 1.0.7
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION)_src.tar.gz
PATCHFILES = Makefile.PL.diff  https.diff  voms-admin.diff

MASTER_SITES += viewvc://jra1mw.cvs.cern.ch:8180/cgi-bin/jra1mw.cgi/ 
GARCVSNAME    = org.glite.security.voms-admin-client
GARCVSVERSION = GLITE_RELEASE_1_3
NOCHECKSUM    = $(DISTFILES)

LIBDEPS = apps/glite/glite apps/alien/common

DESCRIPTION = VOMS admin client
URL = http://www.glite.org
LICENSE = EGEE

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = 

include ../category.mk

PRE_CONFIGURE = (mv $(WORKSRC)/perl $(WORKSRC)/lib)
