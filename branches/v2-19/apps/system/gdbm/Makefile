GARNAME = gdbm
GARVERSION = 1.8.3
CATEGORIES = libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = macosx.diff

MASTER_SITES = ftp://mirror.switch.ch/mirror/gnu/gdbm/

LIBDEPS = apps/gcc/gcc apps/system/db apps/devel/libtool apps/devel/automake

DESCRIPTION = GNU dbm - a set of database routines that use extensible hashing.
AUTHOR = FSF 
LICENSE = GPL2 
URL= http://www.gnu.org/software/gdbm/gdbm.html

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS)


ifeq ($(shell uname -n),alimacx06.cern.ch)
    CONFIGURE_ARGS += --host=x86_64-apple-darwin9.8.0 --build=x86_64-apple-darwin9.8.0
endif    

include ../category.mk

POST_INSTALL = (cd $(WORKSRC); make install-compat )
