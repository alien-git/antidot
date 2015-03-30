GARNAME = openssl
GARVERSION = 0.9.8zf
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://www.openssl.org/source/ 

LIBDEPS = apps/gcc/gcc apps/devel/automake apps/devel/libtool apps/system/openssl-fips

DESCRIPTION = OpenSSL toolkit 
URL = http://www.openssl.org/
AUTHOR = OpenSSL Project
LICENSE = Apache

PLATFORM = $(shell ../../../platform.sh platform)

CONFIGURE_SCRIPTS = $(WORKSRC)/config
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --openssldir=$(PREFIX) --with-fipslibdir=$(PREFIX)/fips/lib/ fips zlib no-idea  zlib no-mdc2 no-rc5  no-ec no-ecdh no-ecdsa no-asm no-krb5 shared -fno-strict-aliasing -L$(PREFIX)/lib -Wa,--noexecstack -DOPENSSL_USE_NEW_FUNCTIONS 

include ../category.mk

POST_CONFIGURE = (cd $(WORKSRC) && bubu && make depend)