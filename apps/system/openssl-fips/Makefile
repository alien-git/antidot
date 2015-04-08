GARNAME = openssl-fips
GARVERSION = 1.2.4
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://www.openssl.org/source/old/fips/ http://www.openssl.org/source/

LIBDEPS = apps/gcc/gcc apps/devel/automake apps/devel/libtool

DESCRIPTION = OpenSSL toolkit 
URL = http://www.openssl.org/
AUTHOR = OpenSSL Project
LICENSE = Apache

PLATFORM = $(shell ../../../platform.sh platform)

CONFIGURE_SCRIPTS = $(WORKSRC)/config
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --openssldir=$(PREFIX)/fips fipscanisterbuild no-asm

include ../category.mk

#PRE_CONFIGURE = (mkdir -p $(PREFIX)/fips)
#POST_INSTALL = (cp $(PREFIX)/fips/lib/fips* $(PREFIX)/lib/;  rm -rf $(PREFIX)/fips/)
