GARNAME = readline
GARVERSION = 5.2
CATEGORIES = apps-libs
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = # shobj-conf.diff patch-001-005.diff

MASTER_SITES = ftp://ftp.gnu.org/gnu/readline/

LIBDEPS = apps/base/ncurses

DESCRIPTION =  The GNU Readline library
URL = http://cnswww.cns.cwru.edu/php/chet/readline/rltop.html
LICENSE = GPL2
AUTHOR = Chet Ramey

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --with-curses=$(PREFIX) --enable-shared 

CONFIGURE_ENV  = env LDFLAGS="-L$(PREFIX)/lib -lncurses"

include ../category.mk

