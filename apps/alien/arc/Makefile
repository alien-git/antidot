CVS_TAG = $(ALIEN_VERSION)

GARNAME    = AliEn-ARC
GARVERSION = $(CVS_TAG)
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION)_src.tar.gz
NOCHECKSUM = $(DISTFILES)

GARCVSNAME = alien-arc
GARCVSVERSION = $(CVS_TAG)

MASTER_SITES = svn-https://alisoft.cern.ch/ 

LIBDEPS = apps/alien/common 

DESCRIPTION = AliEn ARC Interface
URL = http://alien.cern.ch
LICENSE =

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

include ../category.mk
