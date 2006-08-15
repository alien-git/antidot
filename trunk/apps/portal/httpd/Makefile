GARNAME = httpd
GARVERSION = 2.0.55
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = 

LIBDEPS = apps/base/openssl

DESCRIPTION = Apache Web Server
URL = http://apache.org
AUTHOR = Apache Project 
LICENSE = Apache

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX)/httpd --with-mpm=prefork --enable-ssl --enable-so  
CONFIGURE_ENV  = env CFLAGS=-DSSL_EXPERIMENTAL_ENGINE

include ../category.mk

