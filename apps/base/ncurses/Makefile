GARNAME = ncurses
GARVERSION = 5.4
CATEGORIES = apps-libs
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.gz


MASTER_SITES =   http://alien.cern.ch/cache/ http://freshmeat.net/redir/ncurses/6995/url_tgz/

LIBDEPS = 

DESCRIPTION =  Freeware emulation of System V Release 4.0 curses.

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --with-shared    

include ../category.mk

POST_INSTALL = (cd $(PREFIX)/lib; rm -rf libtermcap.so.2; ln -s libncurses.so libtermcap.so.2 ) 
