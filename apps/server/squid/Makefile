GARNAME = squid
GARVERSION = 2.6.STABLE4
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.bz2
PATCHFILES = 

MASTER_SITES = 

LIBDEPS = apps/base/openssl

DESCRIPTION = MySQL database
URL = http://www.squid-cache.org/
LICENSE = GPL
AUTHOR = Squid Team

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX)

CONFIGURE_ENV  =

include ../category.mk
