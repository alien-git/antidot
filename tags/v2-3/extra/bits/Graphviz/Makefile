GARNAME = graphviz
GARVERSION = 2.2.1
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://graphviz.org/pub/graphviz/ARCHIVE/

LIBDEPS = apps/gcc/gcc apps/base/zlib

DESCRIPTION = Graph Visualization Software
URL = http://graphviz.org/
AUTHOR = AT&T
LICENSE = CPL

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS)


include ../category.mk
