GARNAME = jdk
GARVERSION = 6u15
CATEGORIES = tools-devel
DISTNAME = jdk

PATCHFILES = Makefile.patch 

MASTER_SITES = http://monalisa.cern.ch/download/monalisa/ http://monalisa.cacr.caltech.edu/download/monalisa/

LIBDEPS =

DESCRIPTION = Java Developer's Kit
AUTHOR = SUN
URL = http://java.sun.com
LICENSE = Java SE Licensees 

JAVA_PLATFORM = $(shell $(GARDIR)/platform.sh javaplatform)
JAVA_VERSION = 6u15


CONFIGURE_SCRIPTS = 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile 

CONFIGURE_ARGS =
BUILD_ARGS   = build 

include ../category.mk

BUILD_ENV = env JAVA_PLATFORM=$(JAVA_PLATFORM) JAVA_VERSION=$(JAVA_VERSION) MASTER_SITES="$(MASTER_SITES)" DISTNAME=$(DISTNAME)
INSTALL_ENV = env JAVA_PLATFORM=$(JAVA_PLATFORM) JAVA_VERSION=$(JAVA_VERSION) MASTER_SITES="$(MASTER_SITES)" DISTNAME=$(DISTNAME)