GARNAME = cronolog
GARVERSION = 1.6.2
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES =  http://cronolog.org/download/

LIBDEPS = apps/gcc/gcc

DESCRIPTION = Flexible web log rotation
URL = http://cronolog.org
AUTHOR = Andrew Ford
LICENSE = zlib

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS =

AUTOTEST = 

CONFIGURE_ARGS = --prefix=$(PREFIX)

include ../category.mk

