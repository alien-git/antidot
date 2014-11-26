GARNAME = libtool
GARVERSION = 2.2.10
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

BININSTALL_IGNORE = true

MASTER_SITES = http://ftp.gnu.org/gnu/libtool/

LIBDEPS = apps/devel/m4

DESCRIPTION = GNU Libtool
URL = http://www.gnu.org/software/libtool/libtool.html
AUTHOR = 
LICENSE = GPL

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX)

include ../category.mk
