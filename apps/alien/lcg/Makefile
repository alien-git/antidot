SVNTYPE = trunk
SVNNAME =  trunk
SVNREVISION = 278

GARNAME    = alien-lcg
GARVERSION = $(SVNNAME)
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION)_src.tar.gz
NOCHECKSUM = $(DISTFILES)

MASTER_SITES = svn-https://alisoft.cern.ch/

LIBDEPS = apps/alien/common apps/perl/Expect

DESCRIPTION = AliEn LCG Interface
URL = http://alien.cern.ch
LICENSE =

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

include ../category.mk
