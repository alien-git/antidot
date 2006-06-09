GARNAME = loudmouth
GARVERSION = 1.0.3
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://ftp.imendio.com/pub/imendio/loudmouth/src/

LIBDEPS = apps/gui/glib apps/base/gnutls

AUTHOR  = Imenio AB
LICENSE = GPL2
URL     = http://developer.imendio.com/wiki/Loudmouth

DESCRIPTION = Loudmouth is a lightweight and easy-to-use C library for programming with the Jabber protocol

CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --with-ssl=yes --with-libgnutls-prefix=$(PREFIX)
#CONFIGURE_ENV  = env LOUDMOUTH_CFLAGS="-I/opt/alien/includ" LOUDMOUTH_LIBS="-L/opt/alien/lib -lgnutls -lgcrypt -lgpg-error -lz" 
CONFIGURE_ENV   = env LD_LIBRARY_PATH=$(PREFIX)/lib

include ../category.mk
