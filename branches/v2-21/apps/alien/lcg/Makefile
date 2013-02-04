SVNTYPE = branches
SVNNAME =  v2-21
SVNDIR = lcg
SVNREVISION =
#OD 3576

GARNAME    = alien-lcg
GARVERSION = $(SVNNAME)
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION)_src.tar.gz
NOCHECKSUM = $(DISTFILES)

MASTER_SITES = svn-http://svn.cern.ch/guest/AliEn/

LIBDEPS = apps/alien/common apps/perl/Expect

DESCRIPTION = AliEn LCG Interface
URL = http://alien.cern.ch
LICENSE =

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

include ../category.mk
