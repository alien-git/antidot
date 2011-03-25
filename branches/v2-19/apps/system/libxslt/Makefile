GARNAME = libxslt
GARVERSION = 1.1.26
CATEGORIES = libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://ftp.acc.umu.se/pub/gnome/sources/libxslt/1.1/ ftp://xmlsoft.org/libxslt/

LIBDEPS = apps/system/libxml2 apps/system/zlib apps/devel/automake apps/devel/libtool

DESCRIPTION = The XSLT C library for Gnome
URL = http://xmlsoft.org/XSLT/
AUTHOR = Daniel Veillard
LICENSE = libexslt 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --with-libxml-prefix=$(PREFIX)

include ../category.mk
