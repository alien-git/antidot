GARNAME = ncurses
GARVERSION = 5.9
CATEGORIES = apps-libs
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://ftp.gnu.org/pub/gnu/ncurses/

LIBDEPS = apps/gcc/gcc apps/devel/libtool apps/devel/automake

DESCRIPTION =  Freeware emulation of System V Release 4.0 curses.
URL = http://www.gnu.org/software/ncurses/ncurses.html
AUTHOR = Pavel Curtis
LICENSE = 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --with-shared  --enable-broken_linker --without-ada  --enable-symlinks

include ../category.mk

#POST_INSTALL = (cd $(PREFIX)/$(TARGET_LIBNAME); rm -rf libtermcap.so.2; ln -s libncurses.so libtermcap.so.2 ) 
