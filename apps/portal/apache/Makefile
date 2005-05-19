GARNAME = apache
GARVERSION = 1.3.33
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
DISTNAME  = $(GARNAME)-$(GARVERSION)

MASTER_SITES = 

LIBDEPS = apps/base/openssl 

DESCRIPTION = Apache Web Server
URL = http://www.apache.org
AUTHOR = Apache Project
LICENSE = Apache

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix $(PREFIX)

include ../category.mk
