GARNAME = ant
GARVERSION = 1.9.3
CATEGORIES = tools-devel
DISTFILES = apache-$(GARNAME)-$(GARVERSION)-bin.tar.gz
DISTNAME = apache-$(GARNAME)-$(GARVERSION)

PATCHFILES = Makefile.patch
 
BININSTALL_IGNORE = true

MASTER_SITES = http://archive.apache.org/dist/ant/binaries/

LIBDEPS = apps/devel/jdk

DESCRIPTION = The Apache Ant Project
AUTHOR = Apache
URL = http://ant.apache.org/
LICENSE = The Apache License Version 2.0 

BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

include ../category.mk
