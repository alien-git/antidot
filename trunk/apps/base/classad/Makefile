GARNAME = classads
GARVERSION = 0.9.7
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION)a.tar.gz
PATCHFILES = ostream.diff limits.diff fnCall.diff util.diff  instantiations.diff

MASTER_SITES = http://alien.cern.ch/cache/ 
AUTHOR = Condor Project 
URL = http://www.cs.wisc.edu/condor/classad/
LICENSE = Condor

LIBDEPS = 

DESCRIPTION = Condor ClassAd library

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  --prefix $(PREFIX) --enable-namespace --enable-flexible-member

include ../category.mk

PRE_CONFIGURE = ( cd $(WORKSRC); sh bootstrap )
