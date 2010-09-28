GARNAME = cyrus-sasl
GARVERSION = 2.1.23
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#PATCHFILES = client.c.diff

ifeq ($(shell uname),Darwin)
PATCHFILES = gcc4.diff
endif

MASTER_SITES = http://ftp.andrew.cmu.edu/pub/cyrus-mail/

LIBDEPS = apps/tools/globus-toolkit apps/system/openssl

DESCRIPTION = SASL is the Simple Authentication and Security Layer
URL = http://asg.web.cmu.edu/sasl/
AUTHOR =  Walter Wong, adapted for AliEn by Artem Harutyunyan and Arsen Hayrapetyan 

LICENSE = SASL 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = env LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64" CFLAGS="-g" CPPFLAGS="-g" CXXFLAGS="-g"
CONFIGURE_ARGS = $(DIRPATHS) --with-openssl=$(PREFIX) --with-globus-nothr-flavor=$(GLOBUS_FLAVOR) --with-globus=$(GLOBUS_LOCATION) --enable-alientoken -enable-alienssh --enable-aliengssapi --disable-cram --disable-digest --disable-otp --disable-gssapi --disable-anon --disable-plain --enable-krb4=no --with-plugindir=$(PREFIX)/lib/sasl2 --enable-shared --with-dblib=none --disable-macos-framework

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); find . -name config.cache -exec rm -rf config.cache \; )

# PRE_CONFIGURE = (cd $(WORKSRC) ; /bin/sh -c ../../files/build; cd plugins; chmod +x ./makeinit.sh ; /bin/sh -c ./makeinit.sh ; )

