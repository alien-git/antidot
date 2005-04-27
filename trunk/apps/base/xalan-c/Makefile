GARNAME = Xalan-C
GARVERSION = 1_8_0
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)_$(GARVERSION)-src.tar.gz
DISTNAME    = xml-xalan
BINDISTNAME = $(GARNAME)-$(GARVERSION)_$(PLATFORM)

PATCHFILES = Makefile.in.patch

MASTER_SITES = http://archive.apache.org/dist/xml/xalan-c/source/ http://alien.cern.ch/cache/

LIBDEPS = apps/base/xerces-c

DESCRIPTION = XSLT stylesheet processors, in Java and C+
URL = http://xml.apache.org/xalan-c/
AUTHOR = Apache Project
LICENSE = Apache

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS =  $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = -p linux -c gcc -x g++ -P $(PREFIX)

BUILD_ARGS   = -C c
INSTALL_ARGS = -C c

include ../category.mk

PRE_CONFIGURE = cp files/configure $(WORKSRC) 

export XALANCROOT:=$(shell pwd)/$(WORKSRC)/c
export XERCESCROOT:=$(PREFIX)

