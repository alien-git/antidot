GARNAME = automake
GARVERSION = 1.11.1
CATEGORIES = tools-devel
DISTFILES = $(GARNAME)-$(GARVERSION).tar.bz2

BININSTALL_IGNORE = true

MASTER_SITES = http://ftp.gnu.org/gnu/automake/

LIBDEPS = apps/devel/autoconf

DESCRIPTION = GNU Autmake
URL = http://www.gnu.org/software/automake/
AUTHOR = 
LICENSE = GPL2

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX)

include ../category.mk
