GARNAME = db
GARVERSION = 4.3.27
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://alien.cern.ch/cache/ http://ftp.sleepycat.com/releases/

LIBDEPS = 

DESCRIPTION = Berkeley DB
URL = http://www.sleepycat.com/
AUTHOR = Sleepycat Software
LICENSE = Sleepycat

CONFIGURE_SCRIPTS = $(WORKSRC)/build_unix/configure
BUILD_SCRIPTS = $(WORKSRC)/build_unix/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/build_unix/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --enable-posixmutexes

include ../category.mk

PRE_CONFIGURE = cp files/configure $(WORKSRC)/build_unix/configure
