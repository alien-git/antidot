GARNAME = monit
GARVERSION = 4.8.1
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
ifneq ($(shell uname -s),Darwin)
PATCHFILES = macos.diff
endif

MASTER_SITES =  http://www.tildeslash.com/monit/dist/

LIBDEPS = apps/base/openssl

DESCRIPTION = Utility for managing and monitoring, processes, files, directories and devices on a UNIX system

URL = http://www.tildeslash.com/monit/
AUTHOR = Jan-Henrik Haukeland
LICENSE = GPL2

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

AUTOTEST = 

ifneq ($(shell uname -s),Darwin)
CONFIGURE_ARGS = --prefix=$(PREFIX) --with-ssl-dir=$(PREFIX)/include --with-ssl-lib-dir=$(PREFIX)/lib
else
CONFIGURE_ARGS = --prefix=$(PREFIX) --with-ssl-dir=/usr
endif
CONFIGURE_ENV  = env LDFLAGS=-L$(PREFIX)/lib

include ../category.mk

