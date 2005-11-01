GARNAME = cyrus-sasl
GARVERSION = 2.1.20
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = gcc4.diff

MASTER_SITES = http://ftp.andrew.cmu.edu/pub/cyrus-mail/

LIBDEPS = apps/base/openssl

DESCRIPTION = SASL is the Simple Authentication and Security Layer
URL = http://asg.web.cmu.edu/sasl/
AUTHOR =  Walter Wong 
LICENSE = SASL 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --enable-gssapi --with-plugindir=$(PREFIX)/sasl --enable-krb4=no --enable-shared --with-dblib=none

include ../category.mk
