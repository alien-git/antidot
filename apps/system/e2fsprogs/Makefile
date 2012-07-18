GARNAME = e2fsprogs
GARVERSION = 1.42.4
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
#PATCHFILES = Makefile.in.diff

#MASTER_SITES = http://puzzle.dl.sourceforge.net/sourceforge/e2fsprogs/
MASTER_SITES = http://downloads.sourceforge.net/project/e2fsprogs/e2fsprogs/v$(GARVERSION)/

BININSTALL_IGNORE = true

LIBDEPS = apps/gcc/gcc

AUTHOR  =  Theodore Tso
LICENSE = BSD
URL     = http://e2fsprogs.sourceforge.net/

DESCRIPTION = UUID library 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ARGS = --prefix=$(PREFIX)
INSTALL_TARGET = install-libs

include ../category.mk
