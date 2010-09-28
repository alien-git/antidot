CVS_TAG = $(shell echo '$$Name$$' | awk '{print $$2}' | sed -e 's/^\$$$$/HEAD/' )

GARNAME    = AliEn-ARC
GARVERSION = $(CVS_TAG)
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION)_src.tar.gz
NOCHECKSUM = $(DISTFILES)

GARCVSNAME = alien-arc
GARCVSVERSION = $(CVS_TAG)

MASTER_SITES = pserver://cvs@alisoft.cern.ch:/soft/cvsroot/ 

LIBDEPS = apps/alien/common 

DESCRIPTION = AliEn ARC Interface
URL = http://alien.cern.ch
LICENSE =

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

include ../category.mk
