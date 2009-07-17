GARNAME = swig
#1.3.39
GARVERSION = 1.3.25
CATEGORIES = tools-devel
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://downloads.sourceforge.net/sourceforge/swig/swig-1.3.39.tar.gz?use_mirror=fastbull
#MASTER_SITES = http://fastbull.dl.sourceforge.net/sourceforge/swig/

MASTER_SITES = http://puzzle.dl.sourceforge.net/sourceforge/swig/ http://ovh.dl.sourceforge.net/sourceforge/swig/ 

LIBDEPS = apps/gcc/gcc

DESCRIPTION = Simplified Wrapper and Interface Generator
URL = http://www.swig.org
LICENSE = GPL2
AUTHOR = Copyright (c) University of Chicago.

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX)

include ../category.mk
