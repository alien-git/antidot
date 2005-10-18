GARNAME = apache
GARVERSION = 1.3.33-24
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
DISTNAME  = $(GARNAME)-$(GARVERSION)
PATCHFILES = macos.diff modssl_gsi.diff

MASTER_SITES = 

LIBDEPS = apps/base/openssl apps/base/libwww-perl

DESCRIPTION = Apache Web Server
URL = http://www.apache.org
AUTHOR = Apache Project
LICENSE = Apache

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix $(PREFIX)

include ../category.mk
