GARNAME = lcg-dm
GARVERSION = 1.5.10
CATEGORIES = apps-gcc
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = config.diff

MASTER_SITES = 

LIBDEPS = apps/gcc/gcc apps/server/mysql apps/base/cgsi-gsoap apps/base/zlib

DESCRIPTION = LCG Data Management
URL = http://lcg.web.cern.ch/LCG
AUTHOR = CERN LCG
LICENSE = 
 
CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST=

CONFIGURE_ARGS = --prefix=$(PREFIX)
CONFIGURE_ENV  = env GSOAP_LOCATION=$(PREFIX) MYSQL_LOCATION=$(PREFIX) LD_LIBRARY_PATH=$(GLOBUS_LOCATION)/lib:$(PREFIX)/lib 
BUILD_ENV  = env GSOAP_LOCATION=$(PREFIX) MYSQL_LOCATION=$(PREFIX) LD_LIBRARY_PATH=$(GLOBUS_LOCATION)/lib:$(PREFIX)/lib 
INSTALL_ARGS  = DESTDIR=$(PREFIX)/include/dpm

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC)/scripts; sh choose-module mysql dpm ) 
