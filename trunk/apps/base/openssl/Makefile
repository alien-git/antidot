GARNAME = openssl
GARVERSION = 0.9.8
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
ifeq ($(shell uname),Darwin)
PATCHFILES = macos.diff
endif

MASTER_SITES = http://www.openssl.org/source/ 

LIBDEPS = apps/base/zlib 

DESCRIPTION = OpenSSL toolkit 
URL = http://www.openssl.org/
AUTHOR = OpenSSL Project
LICENSE = Apache

CONFIGURE_SCRIPTS = $(WORKSRC)/config
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = -L$(PREFIX)/lib --openssldir=$(PREFIX)/ssl zlib no-asm no-krb5 shared 

include ../category.mk

