GARNAME = cyrus-sasl
GARVERSION = 2.1.21
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

PATCHFILES = cyrus-sasl-2.1.21b.patch
ifeq ($(shell uname),Darwin)
PATCHFILES = gcc4.diff cyrus-sasl-2.1.21b.patch
endif


MASTER_SITES = http://ftp.andrew.cmu.edu/pub/cyrus-mail/

LIBDEPS = apps/base/globus-toolkit

DESCRIPTION = SASL is the Simple Authentication and Security Layer
URL = http://asg.web.cmu.edu/sasl/
AUTHOR =  Walter Wong, adapted for AliEn by Artem Harutyunyan and Arsen Hayrapetyan 

LICENSE = SASL 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --with-globus-nothr-flavor=$(GLOBUS_FLAVOR) --with-globus=$(GLOBUS_LOCATION) --enable-alientoken -enable-alienssh --enable-aliengssapi --disable-cram --disable-digest --disable-otp --disable-gssapi --disable-anon --enable-krb4=no --with-plugindir=$(PREFIX)/sasl --enable-shared --with-dblib=none --disable-plain

include ../category.mk
