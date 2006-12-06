GARNAME = ejabberd
GARVERSION = 1.1.2
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = # Makefile.in.diff
ifeq ($(shell uname),Darwin)
PATCHFILES += macos.diff
endif
 
MASTER_SITES = 

LIBDEPS = apps/base/openssl apps/base/ncurses apps/server/otp apps/base/expat

DESCRIPTION = Jabber server written in Erlang
URL = http://www.ejabber.ru/
AUTHOR =
LICENSE = GPL

CONFIGURE_SCRIPTS = $(WORKSRC)/src/configure
BUILD_SCRIPTS = $(WORKSRC)/src/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/src/Makefile
INSTALL_ENV = 

CONFIGURE_ARGS = --prefix=$(PREFIX) --localstatedir=/var/tmp  --with-erlang=$(PREFIX)   --with-expat=$(PREFIX)  --with-openssl=$(PREFIX) 

include ../category.mk

