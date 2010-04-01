GARNAME = libxml2
GARVERSION = 2.7.7
CATEGORIES = libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz 

MASTER_SITES = http://ftp.gnome.org/pub/gnome/sources/libxml2/2.6/ ftp://xmlsoft.org/ ftp://xmlsoft.org/libxml2/

LIBDEPS = apps/gcc/gcc

DESCRIPTION = The XML C parser and toolkit of Gnome
URL = http://xmlsoft.org/
AUTHOR = Daniel Veillard
LICENSE = MIT

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX)

include ../category.mk
