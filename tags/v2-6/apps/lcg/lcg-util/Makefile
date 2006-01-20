GARNAME = lcg-util
GARVERSION = 1.3.1
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES =  

LIBDEPS = apps/lcg/lcg-gfal apps/server/openldap

DESCRIPTION = LCG utilities
URL = http://lcg.web.cern.ch/LCG
AUTHOR = CERN LCG
LICENSE =

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX)

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC);env PREFIX=$(PREFIX) sh bootstrap )

