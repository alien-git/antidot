GARNAME    = AliEn-LCG
GARVERSION = 2.07
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.gz
NOCHECKSUM = $(DISTFILES)

GARCVSNAME = alien-lcg
GARCVSVERSION = v2-9

MASTER_SITES = pserver://cvs@alisoft.cern.ch:/soft/cvsroot/ 

LIBDEPS = apps/alien/common apps/lcg/lfc-perl apps/lcg/lcg-util apps/glite/data-transfer-api-perl

DESCRIPTION = AliEn LCG Interface
URL = http://alien.cern.ch
LICENSE =

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

include ../category.mk
