GARNAME = openssl
GARVERSION = 0.9.8l
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://www.openssl.org/source/ 

LIBDEPS = apps/gcc/gcc apps/system/zlib apps/devel/automake apps/devel/libtool

DESCRIPTION = OpenSSL toolkit 
URL = http://www.openssl.org/
AUTHOR = OpenSSL Project
LICENSE = Apache

PLATFORM = $(shell ../../../platform.sh platform)

CONFIGURE_SCRIPTS = $(WORKSRC)/config

BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --openssldir=$(PREFIX) zlib no-asm no-krb5 shared -fno-strict-aliasing -L$(PREFIX)/lib

include ../category.mk
