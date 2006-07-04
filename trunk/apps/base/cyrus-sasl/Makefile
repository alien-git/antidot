GARNAME = cyrus-sasl
GARVERSION = 2.1.21a
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
ifeq ($(shell uname),Darwin)
PATCHFILES = gcc4.diff
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

CONFIGURE_ARGS = $(DIRPATHS) --with-globus-nothr-flavor=$(GLOBUS_FLAVOR) --with-globus=$(GLOBUS_LOCATION) --enable-alientoken -enable-alienssh --enable-aliengssapi --enable-alienplain --disable-cram --disable-digest --disable-otp --disable-gss --disable-anon --enable-krb4=no --with-plugindir=$(PREFIX)/sasl --enable-shared --with-dblib=none --disable-plain

include ../category.mk
