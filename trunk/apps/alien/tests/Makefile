GARNAME = alien-tests
GARVERSION = 2.2.1
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION)_src.tar.gz
NOCHECKSUM = $(DISTFILES)

PATCHFILES = 

GARCVSNAME    = alien-tests
GARCVSVERSION = HEAD

MASTER_SITES = pserver://cvs@alisoft.cern.ch:/soft/cvsroot/

LIBDEPS = apps/alien/common apps/alien/admin apps/alien/gssapi apps/alien/lcg

DESCRIPTION = AliEn tests
URL = http://alien.cern.ch
LICENSE =

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = 
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile
TEST_ENV = env ALIEN_TESTDIR=test ALIEN_ROOT=$(PREFIX)

CONFIGURE_ARGS = --prefix=$(PREFIX)

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); ./bootstrap )

