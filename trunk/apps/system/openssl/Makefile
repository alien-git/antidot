GARNAME = openssl

GARVERSION = 0.9.8o

CATEGORIES = apps-tools

DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://www.openssl.org/source/ 

LIBDEPS = apps/gcc/gcc apps/system/zlib apps/devel/automake apps/devel/libtool

DESCRIPTION = OpenSSL toolkit 
URL = http://www.openssl.org/
AUTHOR = OpenSSL Project
LICENSE = Apache

PLATFORM = $(shell ../../../platform.sh platform)

ifeq ($(PLATFORM), x86_64-apple-darwin)
    CONFIGURE_SCRIPTS = $(WORKSRC)/Configure
else
    CONFIGURE_SCRIPTS = $(WORKSRC)/config
endif

BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =

ifeq ($(PLATFORM), x86_64-apple-darwin)
    CONFIGURE_ARGS += darwin64-x86_64-cc 
endif

CONFIGURE_ARGS += --prefix=$(PREFIX) zlib no-asm no-krb5 shared -fno-strict-aliasing -L$(PREFIX)/lib
#Ubuntu --prefix=/usr --openssldir=/usr/lib/ssl no-idea no-mdc2 no-rc5 zlib  enable-tlsext no-sslv2 

include ../category.mk

