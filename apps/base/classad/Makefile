GARNAME = classads
GARVERSION = 0.9.9
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = Makefile.diff ostream.diff limits.diff fnCall.diff util.diff  instantiations.diff gcc4.diff Makefile.am.diff

MASTER_SITES = ftp://ftp.cs.wisc.edu/condor/classad/c++/
AUTHOR = Condor Project 
URL = http://www.cs.wisc.edu/condor/classad/
LICENSE = Condor

LIBDEPS = apps/gcc/gcc

DESCRIPTION = Condor ClassAd library

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  --prefix $(PREFIX) --enable-namespace --enable-flexible-member --lib-name aclassad --enable-shlib

include ../category.mk

DESTDIR = $(PREFIX)
