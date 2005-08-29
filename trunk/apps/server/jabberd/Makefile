GARNAME = jabberd
GARVERSION = 2.0s9
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = configure.in.diff
 
MASTER_SITES = 

LIBDEPS = apps/base/openssl apps/server/openldap apps/base/Linux-PAM apps/base/libxml2 apps/base/libidn apps/server/mysql

DESCRIPTION = Jabber server
URL = http://www.jabber.org/
AUTHOR =
LICENSE = GPL2

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --enable-mysql --enable-ldap --enable-pam  --enable-ssl --enable-idn --with-extra-library-path=$(PREFIX)/lib/mysql:$(PREFIX)/lib

include ../category.mk

PRE_CONFIGURE = ( cd $(WORKSRC); autoconf )