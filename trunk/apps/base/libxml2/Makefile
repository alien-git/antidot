GARNAME = libxml2
GARVERSION = 2.6.16
CATEGORIES = libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.bz2

MASTER_SITES = http://ftp.gnome.org/pub/gnome/sources/libxml2/2.6/ ftp://xmlsoft.org/

LIBDEPS = apps/gcc/gcc
DESCRIPTION = The XML C parser and toolkit of Gnome
URL = http://xmlsoft.org/
AUTHOR = Daniel Veillard
LICENSE = libxml2

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS)

include ../category.mk
