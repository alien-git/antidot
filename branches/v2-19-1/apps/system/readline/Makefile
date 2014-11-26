GARNAME = readline
GARVERSION = 6.1
CATEGORIES = apps-libs
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = ftp://ftp.gnu.org/gnu/readline/

LIBDEPS = apps/system/ncurses apps/devel/libtool apps/devel/automake

DESCRIPTION =  The GNU Readline library
URL = http://cnswww.cns.cwru.edu/php/chet/readline/rltop.html
LICENSE = GPL2
AUTHOR = Chet Ramey

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --with-curses=$(PREFIX)

include ../category.mk

