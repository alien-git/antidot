GARNAME = graphviz
GARVERSION = 2.20.3
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://graphviz.org/pub/graphviz/ARCHIVE/

#depends on pango and cairo-devel!!!
LIBDEPS = apps/gcc/gcc apps/system/zlib apps/system/expat apps/devel/swig

DESCRIPTION = Graph Visualization Software
URL = http://graphviz.org/
AUTHOR = AT&T
LICENSE = CPL

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --disable-tcl


include ../category.mk
