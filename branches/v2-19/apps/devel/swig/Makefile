GARNAME = swig
#1.3.39
GARVERSION = 2.0.3
CATEGORIES = tools-devel
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

BININSTALL_IGNORE = true

#http://downloads.sourceforge.net/sourceforge/swig/swig-1.3.39.tar.gz?use_mirror=fastbull
#MASTER_SITES = http://fastbull.dl.sourceforge.net/sourceforge/swig/

MASTER_SITES = http://puzzle.dl.sourceforge.net/sourceforge/swig/ http://ovh.dl.sourceforge.net/sourceforge/swig/  http://prdownloads.sourceforge.net/swig/

LIBDEPS = apps/gcc/gcc apps/devel/libtool apps/devel/automake apps/devel/autoconf apps/devel/pcre

DESCRIPTION = Simplified Wrapper and Interface Generator
URL = http://www.swig.org
LICENSE = GPL2
AUTHOR = Copyright (c) University of Chicago.

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --with-pcre-prefix=$(PREFIX)

include ../category.mk
