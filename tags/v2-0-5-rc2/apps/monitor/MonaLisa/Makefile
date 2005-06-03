GARNAME = MonaLisa
GARVERSION = 1.2.34
CATEGORIES = java
DISTFILES = $(GARNAME).v$(GARVERSION).tar.gz
DISTNAME  = $(GARNAME).v1.2
BINDISTNAME = $(GARNAME)-$(GARVERSION)
PATCHFILES = Makefile.patch

MASTER_SITES = http://monalisa.cern.ch/MONALISA/download/ http://monalisa.cacr.caltech.edu/download/

LIBDEPS = apps/monitor/java

DESCRIPTION = MonALISA Monitoring Framework
LICENSE = CIT
AUTHOR = Caltech
URL = http://monalisa.cacr.caltech.edu


CONFIGURE_SCRIPTS = 
BUILD_SCRIPTS =
INSTALL_SCRIPTS = $(WORKSRC)/Makefile 

CONFIGURE_ARGS =
BUILD_ARGS   =
INSTALL_ARGS = install

INSTALL_ENV = env DISTNAME=$(DISTNAME) PREFIX=$(PREFIX)/java

include ../category.mk

POST_INSTALL = sh files/first_config.sh $(PREFIX)/java/$(DISTNAME) files/

