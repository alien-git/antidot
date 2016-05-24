GARNAME = openssl
GARVERSION = 0.9.8zh
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://www.openssl.org/source/ ftp://ftp.openssl.org/source/old/0.9.x/ ftp://ftp.openssl.org/source/

LIBDEPS = apps/gcc/gcc apps/system/zlib apps/devel/automake apps/devel/libtool apps/system/openssl-fips

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

PRE_CONFIGURE = (cd $(WORKSRC); mkdir ./include/openssl; ln -s ../../crypto/ec/ec.h ./include/openssl/ec.h; ln -s ../../crypto/ecdh/ecdh.h ./include/openssl/ecdh.h;ln -s ../../crypto/ecdsa/ecdsa.h ./include/openssl/ecdsa.h;ln -s ../../crypto/idea/idea.h ./include/openssl/idea.h;)
POST_CONFIGURE = (cd $(WORKSRC) && bubu && make depend)

