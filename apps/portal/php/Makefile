GARNAME = php
GARVERSION = 5.1.4
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES =

LIBDEPS = apps/portal/httpd apps/base/zlib apps/base/gdbm apps/base/ncurses apps/server/mysql apps/base/libxml2 apps/server/openldap apps/base/gettext

DESCRIPTION = PHP server-side HTML embedded scripting language.

URL = http://www.php.net
AUTHOR = 
LICENSE = PHP

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --with-apxs2=$(PREFIX)/httpd/bin/apxs \
	--with-mysql=$(PREFIX) \
	--prefix=$(PREFIX)/httpd/php \
	--with-config-file-path=$(PREFIX)/httpd/php \
	--enable-force-cgi-redirect \
	--disable-cgi \
	--with-zlib=$(PREFIX) \
	--with-gettext=$(PREFIX) \
	--with-gdbm=$(PREFIX) \
	--with-libxml-dir=$(PREFIX) \
	--with-openssl-dir=$(PREFIX) \
	--with-ldap=$(PREFIX)

include ../category.mk



