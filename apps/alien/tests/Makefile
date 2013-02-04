SVNTYPE = branches
SVNNAME =  v2-21
SVNDIR = tests
SVNREVISION =

GARNAME = alien-tests
GARVERSION = $(SVNNAME)
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION)_src.tar.gz
NOCHECKSUM = $(DISTFILES)

PATCHFILES = 

MASTER_SITES = svn-http://svn.cern.ch/guest/AliEn/

LIBDEPS = apps/alien/common apps/alien/admin apps/alien/lcg apps/server/DBD-mysql apps/server/openldap apps/perl/Expect

DESCRIPTION = AliEn tests
URL = http://alien.cern.ch
LICENSE =

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = 
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile
TEST_ENV = env ALIEN_ROOT=$(PREFIX)

CONFIGURE_ARGS = --prefix=$(PREFIX)

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); ./bootstrap )

