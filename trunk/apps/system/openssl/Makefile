GARNAME = openssl
GARVERSION = 1.0.1e
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://www.openssl.org/source/openssl-1.0.1e.tar.gz
MASTER_SITES = http://www.openssl.org/source/ 

LIBDEPS = apps/gcc/gcc apps/devel/automake apps/devel/libtool

DESCRIPTION = OpenSSL toolkit 
URL = http://www.openssl.org/
AUTHOR = OpenSSL Project
LICENSE = Apache

PLATFORM = $(shell ../../../platform.sh platform)

CONFIGURE_SCRIPTS = $(WORKSRC)/config
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) zlib no-asm shared -L$(PREFIX)/lib

include ../category.mk

POST_CONFIGURE = (cd $(WORKSRC) && bubu && make depend)