GARNAME = ml-gsoapclient
GARVERSION = 2.7.10
CATEGORIES = libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

ifeq ($(shell uname),Darwin)
    PATCHFILES = configure.patch
endif

MASTER_SITES = http://monalisa.cacr.caltech.edu/download/monalisa/

LIBDEPS = apps/tools/gsoap

AUTHOR  = Andreas Peters
LICENSE = 
URL     = 

DESCRIPTION = A library to read from MonaLisa Web Service

CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ARGS = --prefix=$(PREFIX)/api 

include ../category.mk
