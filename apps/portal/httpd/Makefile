GARNAME = httpd
GARVERSION = 2.2.15
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

ifeq ($(shell uname),Darwin)
PATCHFILES = apr.h.patch
endif

#PATCHFILES += ssl_modules.patch

MASTER_SITES = http://apache.cict.fr/httpd/

LIBDEPS = apps/base/openssl apps/base/db

DESCRIPTION = Apache Web Server
URL = http://apache.org
AUTHOR = Apache Project 
LICENSE = Apache

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX)/httpd --with-mpm=prefork --enable-ssl --enable-so  --enable-rewrite --enable-dav 

CONFIGURE_ENV  =  env CFLAGS=-DSSL_EXPERIMENTAL_ENGINE

include ../category.mk



