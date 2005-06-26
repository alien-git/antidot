GARNAME = j2re
GARVERSION = 1.4.2_08
CATEGORIES = java

JAVA_PLATFORM = $(shell $(GARDIR)/platform.sh javaplatform)

DISTFILES = $(GARNAME)-1_4_2_08-$(JAVA_PLATFORM).bin
DISTNAME  = $(GARNAME)$(GARVERSION)
BINDISTNAME = $(GARNAME)-$(GARVERSION)
PATCHFILES = Makefile.patch

MASTER_SITES = http://monalisa.cern.ch/MONALISA/download/ http://monalisa.cacr.caltech.edu/download/

LIBDEPS = 

DESCRIPTION = Java Runtime Environment
LICENSE = Java
AUTHOR = Sun Microsystems
URL = http://java.sun.com


CONFIGURE_SCRIPTS = 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile 

CONFIGURE_ARGS =
BUILD_ARGS   = build
INSTALL_ARGS = install

BUILD_ENV = env JAVA_BIN=$(DISTFILES)
INSTALL_ENV = env DISTNAME=$(DISTNAME) PREFIX=$(PREFIX)/java

include ../category.mk

