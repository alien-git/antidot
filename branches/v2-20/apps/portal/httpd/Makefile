GARNAME = httpd
GARVERSION = 2.2.29
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

PATCHFILES += ssl_modules_new.patch

MASTER_SITES = http://apache.cict.fr/httpd/ http://mirror.switch.ch/mirror/apache/dist//httpd/


LIBDEPS = apps/system/expat apps/devel/libtool apps/devel/automake apps/system/openssl

DESCRIPTION = Apache Web Server
URL = http://apache.org
AUTHOR = Apache Project 
LICENSE = Apache

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX)/httpd --with-mpm=prefork --enable-ssl --enable-so  --enable-rewrite --enable-dav --with-ssl=$(PREFIX)

CONFIGURE_ENV  =  env CFLAGS=-DSSL_EXPERIMENTAL_ENGINE CC=gcc
BUILD_ENV= env CC=gcc
INSTALL_ENV= env CC=gcc

include ../category.mk

PRE_CONFIGURE = (rm -rf $(PREFIX)/httpd)

#POST_INSTALL = (patch $(PREFIX)/httpd/conf/httpd.conf files/httpd.conf.patch && cp -f files/startup.pl $(PREFIX)/httpd/conf/)

