GARNAME = glite-alien-tests
GARVERSION = 2.0.1
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION)_src.tar.gz
NOCHECKSUM = $(DISTFILES)

GARCVSNAME    = org.glite.alien.tests
GARCVSVERSION = glite-alien-tests_branch_2_0_0

MASTER_SITES = webcvs://jra1mw.cvs.cern.ch:8180/cgi-bin/jra1mw.cgi/ 

LIBDEPS = apps/alien/common apps/alien/admin apps/alien/gas apps/alien/gssapi apps/alien/packman

DESCRIPTION = AliEn tests
URL = http://alien.cern.ch
LICENSE =

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = 
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile
TEST_ENV = env ALIEN_TESTDIR=test/alien ALIEN_ROOT=$(PREFIX)

CONFIGURE_ARGS = 

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); ./bootstrap )

