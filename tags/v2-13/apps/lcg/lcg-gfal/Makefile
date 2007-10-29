GARNAME = lcg-gfal
GARVERSION = 1.7.3
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION)p2.tar.gz
PATCHFILES = srm_ifce.c.diff
#ifeq ($(shell uname -s),Darwin)
PATCHFILES += macos.diff
#endif
MASTER_SITES =  

LIBDEPS = apps/lcg/lfc apps/server/openldap

DESCRIPTION = Grid file access library
URL = http://lcg.web.cern.ch/LCG
AUTHOR = CERN LCG
LICENSE =

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX)

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC);env PREFIX=$(PREFIX) sh bootstrap )

