GARNAME = gcc
GARVERSION = 3.2.3
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.bz2

MASTER_SITES =  http://alien.cern.ch/cache/ ftp://ftp.gnu.org/gnu/gcc/gcc-3.2.3/  

LIBDEPS = apps/devel/autoconf apps/devel/automake

DESCRIPTION = GNU C/C++ compiler
URL = http://gcc.gnu.org/
AUTHOR = GCC Team
LICENSE = GPL2
 
CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --enable-languages=c,c++,f77

include ../category.mk

POST_INSTALL = (cd $(PREFIX)/bin; rm -rf cc; ln -s gcc cc ) 