GARNAME = openssl
ifeq ($(shell uname),Darwin)
GARVERSION = 0.9.7m
else
GARVERSION = 0.9.7e
endif

CATEGORIES = apps-tools

DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
ifeq ($(shell uname),Darwin)
PATCHFILES = Makefile.org.diff
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

ifeq ($(shell uname -s),Darwin)
TEST_SCRIPTS =
else
TEST_SCRIPTS = $(WORKSRC)/Makefile
endif

CONFIGURE_ARGS = -L$(PREFIX)/lib --openssldir=$(PREFIX) zlib no-asm no-krb5 shared -fno-strict-aliasing 

include ../category.mk

ifeq ($(shell uname -s),Linux)
PRE_CONFIGURE = (cp $(WORKSRC)/../../files/atasi.h $(PREFIX)/include)
endif
