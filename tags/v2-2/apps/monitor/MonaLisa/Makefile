GARNAME = MonaLisa
GARVERSION = 1.2.42
CATEGORIES = java
DISTFILES = $(GARNAME).v$(GARVERSION).tar.gz
DISTNAME  = $(GARNAME).v1.2

PLATFORM = $(shell $(GARDIR)/platform.sh platform)

BINDISTNAME = $(GARNAME)-$(GARVERSION)_$(PLATFORM)
PATCHFILES = Makefile.patch

MASTER_SITES = http://monalisa.cern.ch/MONALISA/download/ http://monalisa.cacr.caltech.edu/download/

LIBDEPS = apps/base/libwww-perl

DESCRIPTION = MonALISA Monitoring Framework
LICENSE = CIT
AUTHOR = Caltech
URL = http://monalisa.cacr.caltech.edu

JAVA_PLATFORM = $(shell $(GARDIR)/platform.sh javaplatform)

CONFIGURE_SCRIPTS = 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile 

CONFIGURE_ARGS =
BUILD_ARGS   = build 
INSTALL_ARGS = install

BUILD_ENV = env JAVA_PLATFORM=$(JAVA_PLATFORM) DISTNAME=$(DISTNAME)
INSTALL_ENV = env DISTNAME=$(DISTNAME) PREFIX=$(PREFIX)/java

include ../category.mk
