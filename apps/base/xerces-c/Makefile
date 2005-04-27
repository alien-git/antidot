GARNAME = xerces-c
GARVERSION = 2_5_0
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-src_$(GARVERSION).tar.gz
DISTNAME  = $(GARNAME)-src_$(GARVERSION)
BINDISTNAME = $(GARNAME)-$(GARVERSION)_$(PLATFORM)
PATCHFILES  = Makefile.in.patch

MASTER_SITES = http://archive.apache.org/dist/xml/xerces-c/Xerces-C_2_5_0/ http://alien.cern.ch/cache/

LIBDEPS = apps/gcc/gcc

DESCRIPTION = Xerces-C++ is a validating XML parser written in a portable subset of C++
URL = http://xml.apache.org/xerces-c/
LICENSE = Apache
AUTHOR = Apache Project

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS =  $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = -plinux -cgcc -xg++ -minmem -nsocket -tnative -rpthread -P$(PREFIX)

BUILD_ARGS   = -C src/xercesc
INSTALL_ARGS = -C src/xercesc

include ../category.mk

PRE_INSTALL = (cd $(PREFIX)/lib; rm -rf libxerces-c* )
PRE_CONFIGURE = cp files/configure $(WORKSRC); cd $(WORKSRC)/src/xercesc ; autoconf; 

export XERCESCROOT:=$(shell pwd)/$(WORKSRC)

