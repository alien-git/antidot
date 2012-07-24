GARNAME = httpd
GARVERSION = 2.2.22
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

ifeq ($(shell uname),Darwin)
PATCHFILES = apr.h.patch
endif

PATCHFILES += ssl_modules.patch

MASTER_SITES = http://apache.cict.fr/httpd/

LIBDEPS = apps/system/expat apps/devel/libtool apps/devel/automake apps/system/openssl

DESCRIPTION = Apache Web Server
URL = http://apache.org
AUTHOR = Apache Project 
LICENSE = Apache

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX)/httpd --with-mpm=prefork --enable-ssl --enable-so  --enable-rewrite --enable-dav --with-ssl=$(PREFIX)

CONFIGURE_ENV  =  env CFLAGS=-DSSL_EXPERIMENTAL_ENGINE

include ../category.mk

PRE_CONFIGURE = (rm -rf $(PREFIX)/httpd)

#POST_INSTALL = (patch $(PREFIX)/httpd/conf/httpd.conf files/httpd.conf.patch && cp -f files/startup.pl $(PREFIX)/httpd/conf/)

