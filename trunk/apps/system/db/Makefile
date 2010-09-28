GARNAME = db
GARVERSION = 4.8.30
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://www.oracle.com/technology/software/products/berkeley-db/htdocs/popup/db/4.5.20/db-targz.html http://download.oracle.com/berkeley-db/db-4.8.30.tar.gz
MASTER_SITES =  http://download.oracle.com/berkeley-db/

LIBDEPS = apps/gcc/gcc apps/devel/libtool apps/devel/automake

DESCRIPTION = Berkeley DB
URL = http://www.sleepycat.com/
AUTHOR = Sleepycat Software
LICENSE = Sleepycat

CONFIGURE_SCRIPTS = $(WORKSRC)/build_unix/configure
BUILD_SCRIPTS = $(WORKSRC)/build_unix/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/build_unix/Makefile
#TEST_SCRIPTS = $(WORKSRC)/build_unix/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --enable-posixmutexes

ifeq ($(shell uname -n),alimacx06.cern.ch)
    CONFIGURE_ARGS += --host=x86_64-apple-darwin9.8.0 --build=x86_64-apple-darwin9.8.0
endif


include ../category.mk

PRE_CONFIGURE = cp files/configure $(WORKSRC)/build_unix/configure
