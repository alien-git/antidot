GARNAME = openssl

ifeq ($(shell uname),Darwin)
GARVERSION = 0.9.8j
else
GARVERSION = 0.9.7e
endif

CATEGORIES = apps-tools

DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://www.openssl.org/source/ 

LIBDEPS = apps/base/zlib 

DESCRIPTION = OpenSSL toolkit 
URL = http://www.openssl.org/
AUTHOR = OpenSSL Project
LICENSE = Apache

PLATFORM = $(shell ../../../platform.sh platform)

ifeq ($(PLATFORM), x86_64-apple-darwin8.6.1)
CONFIGURE_SCRIPTS = $(WORKSRC)/Configure
else
CONFIGURE_SCRIPTS = $(WORKSRC)/config
endif

BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =

ifeq ($(PLATFORM), x86_64-apple-darwin8.6.1)
CONFIGURE_ARGS += darwin64-x86_64-cc 
endif

ifeq ($(shell uname),Darwin)
CONFIGURE_ARGS += --openssldir=$(PREFIX) 
else
CONFIGURE_ARGS += --openssldir=$(PREFIX) zlib no-asm no-krb5 shared -fno-strict-aliasing -L$(PREFIX)/lib -L$(PREFIX)/lib64
endif

include ../category.mk

ifeq ($(shell uname -s),Linux)
PRE_CONFIGURE = (cp $(WORKSRC)/../../files/atasi.h $(PREFIX)/include)
endif
