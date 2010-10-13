GARNAME = graphviz
GARVERSION = 2.26.3
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://graphviz.org/pub/graphviz/ARCHIVE/

LIBDEPS = apps/gcc/gcc apps/system/zlib apps/system/expat

DESCRIPTION = Graph Visualization Software
URL = http://graphviz.org/
AUTHOR = AT&T
LICENSE = CPL

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS)


include ../category.mk
