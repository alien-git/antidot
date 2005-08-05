GARNAME = monit
GARVERSION = 4.5.1
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES =  http://www.tildeslash.com/monit/dist/

LIBDEPS = apps/base/openssl

DESCRIPTION = Utility for managing and monitoring, processes, files, directories and devices on a UNIX system

URL = http://www.tildeslash.com/monit/
AUTHOR = Jan-Henrik Haukeland
LICENSE = GPL2

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = 

CONFIGURE_ARGS = $(DIRPATHS)

include ../category.mk

