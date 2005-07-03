GARNAME = gdbm
GARVERSION = 1.8.3
CATEGORIES = libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = ftp://mirror.switch.ch/mirror/gnu/gdbm/

LIBDEPS = apps/base/db

DESCRIPTION = GNU dbm - a set of database routines that use extensible hashing.
AUTHOR = FSF 
LICENSE = GPL2 
URL= http://www.gnu.org/software/gdbm/gdbm.html

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS)

include ../category.mk

POST_INSTALL = (cd $(WORKSRC); make install-compat )
