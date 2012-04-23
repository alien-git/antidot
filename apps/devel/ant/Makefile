GARNAME = ant
GARVERSION = 1.8.3
CATEGORIES = tools-devel
DISTFILES = apache-$(GARNAME)-$(GARVERSION)-bin.tar.gz
DISTNAME = apache-$(GARNAME)-$(GARVERSION)

PATCHFILES = Makefile.patch
 
BININSTALL_IGNORE = true

#http://apache.multidist.com/ant/binaries/apache-ant-1.7.1-bin.tar.gz
MASTER_SITES = http://apache.multidist.com/ant/binaries/

LIBDEPS = apps/devel/jdk

DESCRIPTION = The Apache Ant Project
AUTHOR = Apache
URL = http://ant.apache.org/
LICENSE = The Apache License Version 2.0 

BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

include ../category.mk
