GARNAME = MonaLisa
GARVERSION = 1.9.4
CATEGORIES = java
DISTFILES = $(GARNAME).v$(GARVERSION).tar.gz
DISTNAME  = $(GARNAME).v1.9

PLATFORM = $(shell $(GARDIR)/platform.sh platform)

BINDISTNAME = $(GARNAME)-$(GARVERSION)_$(PLATFORM)
PATCHFILES = Makefile.patch

MASTER_SITES = http://monalisa.cern.ch/download/monalisa/ http://monalisa.cacr.caltech.edu/download/monalisa/
#
#LIBDEPS = apps/perl/libwww-perl

DESCRIPTION = MonALISA Monitoring Framework
LICENSE = CIT
AUTHOR = Caltech
URL = http://monalisa.cacr.caltech.edu

CONFIGURE_SCRIPTS = 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile 

CONFIGURE_ARGS =
BUILD_ARGS   = build 
INSTALL_ARGS = install

include ../category.mk

JAVA_PLATFORM = $(shell $(GARDIR)/platform.sh javaplatform)
JAVA_VERSION = 7u11

#ifeq ($(JAVA_PLATFORM),linux-ia64)

BUILD_ENV = env JAVA_PLATFORM=$(JAVA_PLATFORM) JAVA_VERSION=$(JAVA_VERSION) MASTER_SITES="$(MASTER_SITES)" DISTNAME=$(DISTNAME)
INSTALL_ENV = env DISTNAME=$(DISTNAME) PREFIX=$(PREFIX)/java


