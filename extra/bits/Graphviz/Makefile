GARNAME = graphviz
GARVERSION = 2.20.3
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://graphviz.org/pub/graphviz/ARCHIVE/

LIBDEPS = apps/gcc/gcc apps/base/zlib apps/base/expat

DESCRIPTION = Graph Visualization Software
URL = http://graphviz.org/
AUTHOR = AT&T
LICENSE = CPL

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS)


include ../category.mk
