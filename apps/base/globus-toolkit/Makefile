GARNAME = globus-toolkit
CATEGORIES = apps-tools
PATCHFILES = Makefile.in.diff

ifeq ($(shell uname),Darwin)
GARVERSION = 4.0.3p1
else
GARVERSION = 4.0.3
endif

DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

LIBDEPS   = apps/base/libxml2 apps/base/eugridpma-carep

BUILDDEPS = apps/base/perl

DESCRIPTION = Globus Toolkit
URL = http://www.globus.org/
LICENSE = Globus 
AUTHOR = Globus Alliance
 
CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

INSTALL_ENV = env GLOBUS_LOCATION=$(GLOBUS_LOCATION) GPT_LOCATION=$(GPT_LOCATION) GLOBUS_FLAVOR=$(GLOBUS_FLAVOR) 

CONFIGURE_ENV = env GLOBUS_LOCATION=$(GLOBUS_LOCATION) GPT_LOCATION=$(GPT_LOCATION) GLOBUS_FLAVOR=$(GLOBUS_FLAVOR) 

CONFIGURE_ARGS = --prefix=$(GLOBUS_LOCATION) --with-flavor=$(GLOBUS_FLAVOR)

include ../category.mk

PRE_CONFIGURE = (rm -rf $(GLOBUS_LOCATION))
