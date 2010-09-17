GARNAME = gettext
GARVERSION = 0.16
CATEGORIES = libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = ftp://ftp.gnu.org/gnu/gettext/

LIBDEPS = apps/gcc/gcc

DESCRIPTION = A set of tools that provides a framework to help other GNU packages produce multi-lingual messages
URL = http://www.gnu.org/software/gettext
AUTHOR = gnu.org
LCIENSE = GPL2

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS)

include ../category.mk
