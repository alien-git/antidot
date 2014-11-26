GARNAME = classads
GARVERSION = 1.0.9
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = ftp://ftp.cs.wisc.edu/condor/classad/c++/
AUTHOR = Condor Project 
URL = http://www.cs.wisc.edu/condor/classad/
LICENSE = Condor

LIBDEPS = apps/gcc/gcc apps/devel/libtool apps/devel/automake

DESCRIPTION = Condor ClassAd library

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  --prefix=$(PREFIX) --enable-namespace --enable-flexible-member --without-pcre 

include ../category.mk

