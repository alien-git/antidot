GARNAME = dialog
GARVERSION = 1.0
CATEGORIES = tools-devel
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
ifeq ($(shell uname -s),Darwin)
PATCHFILES = macos1.diff
endif

MASTER_SITES = 

LIBDEPS = apps/base/ncurses

DESCRIPTION = Dialog
URL = http://invisible-island.net/dialog/dialog.html
AUTHOR = 
LICENSE = GPL2

AUTOTEST=

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) 

include ../category.mk
