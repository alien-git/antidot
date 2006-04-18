GARNAME = glib
GARVERSION = 2.6.1
CATEGORIES = libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.bz2
PATCHFILES = macos.diff

MASTER_SITES = ftp://ftp.gtk.org/pub/gtk/v2.6/ ftp://ftp.gnome.org/pub/gnome/sources/glib/2.6/

LIBDEPS = apps/gcc/gcc apps/devel/pkgconfig

DESCRIPTION = low-level core library
URL = http://www.gtk.org/
AUTOR = GPL2
LICENSE = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

# Add --with-libiconv=gnu on non-GNU based platforms
CONFIGURE_ARGS = $(DIRPATHS) --enable-static

include ../category.mk
