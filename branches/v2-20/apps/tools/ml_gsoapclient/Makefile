GARNAME = ml-gsoapclient
GARVERSION = 2.7.10
CATEGORIES = libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

PATCHFILES =

ifeq ($(shell uname),Darwin)
    PATCHFILES += configure.patch
endif

ifeq ($(shell uname -a | grep -c -i ubuntu),1)
    PATCHFILES += testWS.cxx.patch
endif

MASTER_SITES = 

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
