GARNAME = libxslt
GARVERSION = 1.1.12
CATEGORIES = libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.bz2

MASTER_SITES = http://ftp.acc.umu.se/pub/gnome/sources/libxslt/1.1/ ftp://xmlsoft.org/

LIBDEPS = apps/base/libxml2

DESCRIPTION = libxslt

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS)

include ../category.mk
