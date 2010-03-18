GARNAME = db
GARVERSION = 4.5.20
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://www.oracle.com/technology/software/products/berkeley-db/htdocs/popup/db/4.7.25/db-targz.html
#http://freshmeat.net/redir/berkeleydb/694/url_tgz/db-4.7.25.tar.gz
MASTER_SITES =  http://download.oracle.com/berkeley-db/

LIBDEPS = apps/gcc/gcc

DESCRIPTION = Berkeley DB
URL = http://www.sleepycat.com/
AUTHOR = Sleepycat Software
LICENSE = Sleepycat

CONFIGURE_SCRIPTS = $(WORKSRC)/build_unix/configure
BUILD_SCRIPTS = $(WORKSRC)/build_unix/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/build_unix/Makefile

AUTOTEST=locateCommand db_verify -V | awk -F' |:' '{print $6}'

CONFIGURE_ARGS = $(DIRPATHS) --enable-posixmutexes
i
ifeq ($(shell uname -n),alimacx06.cern.ch)
    CONFIGURE_ARGS += --host=x86_64-apple-darwin9.8.0 --build=x86_64-apple-darwin9.8.0
endif


include ../category.mk

PRE_CONFIGURE = cp files/configure $(WORKSRC)/build_unix/configure
