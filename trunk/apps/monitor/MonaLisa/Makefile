GARNAME = MonaLisa
GARVERSION = 1.5.0
CATEGORIES = java
DISTFILES = $(GARNAME).v$(GARVERSION).tar.gz
DISTNAME  = $(GARNAME).v1.5

PLATFORM = $(shell $(GARDIR)/platform.sh platform)

BINDISTNAME = $(GARNAME)-$(GARVERSION)_$(PLATFORM)
PATCHFILES = Makefile.patch

MASTER_SITES = http://monalisa.cern.ch/download/monalisa/ http://monalisa.cacr.caltech.edu/download/monalisa/

LIBDEPS = apps/base/libwww-perl

DESCRIPTION = MonALISA Monitoring Framework
LICENSE = CIT
AUTHOR = Caltech
URL = http://monalisa.cacr.caltech.edu

JAVA_PLATFORM = $(shell $(GARDIR)/platform.sh javaplatform)
JAVA_VERSION = 1_4_2_11

CONFIGURE_SCRIPTS = 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile 

CONFIGURE_ARGS =
BUILD_ARGS   = build 
INSTALL_ARGS = install

BUILD_ENV = env JAVA_PLATFORM=$(JAVA_PLATFORM) JAVA_VERSION=$(JAVA_VERSION) MASTER_SITES="$(MASTER_SITES)" DISTNAME=$(DISTNAME)
INSTALL_ENV = env DISTNAME=$(DISTNAME) PREFIX=$(PREFIX)/java

include ../category.mk

ifeq ($(shell uname -s),Darwin)
post-build:
	@sed <work/MonaLisa.v1.5/MonaLisa.v1.5/Service/CMD/ML_SER -e 's/hostname *-f/hostname/g' > work/MonaLisa.v1.5/MonaLisa.v1.5/Service/CMD/ML_SER.mac ; \
	mv work/MonaLisa.v1.5/MonaLisa.v1.5/Service/CMD/ML_SER{.mac,}
endif
