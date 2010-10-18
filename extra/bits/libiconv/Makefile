GARNAME = libiconv
GARVERSION = 1.13.1
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.13.1.tar.gz
MASTER_SITES = http://ftp.gnu.org/pub/gnu/libiconv/

LIBDEPS = apps/gcc/gcc 

DESCRIPTION = This library provides an iconv() implementation, for use on systems which don't have one
URL = http://www.gnu.org/software/libiconv/
AUTHOR = GNU
LICENSE = GPL

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX)


include ../category.mk
