GARNAME = jabberd
GARVERSION = 2.0s6
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.gz
 
MASTER_SITES = http://alien.cern.ch/cache/

LIBDEPS = apps/base/openssl apps/base/libxml2 apps/base/libidn apps/server/mysql

DESCRIPTION = Jabber server

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --enable-ssl --enable-mysql --enable-ssl --enable-idn

include ../category.mk
