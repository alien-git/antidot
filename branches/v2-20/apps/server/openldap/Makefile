GARNAME = openldap
GARVERSION = 2.4.23
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tgz
PATCHFILES = core.schema.patch install.diff

MASTER_SITES = ftp://sunsite.cnlab-switch.ch/mirror/OpenLDAP/openldap-release/

LIBDEPS = apps/gcc/gcc apps/system/db

DESCRIPTION = OpenLDAP
URL = http://www.openldap.org/
AUTHOR = 
LICENSE = OpenLDAP 

CONFIGURE_ENV = env CPPFLAGS="-D_GNU_SOURCE -L$(PREFIX)/lib -I$(PREFIX)/include" LDFLAGS=" -L$(PREFIX)/lib " CFLAGS="-D_GNU_SOURCE -L$(PREFIX)/lib  -I$(PREFIX)/include"
BUILD_ENV = env CPPFLAGS="-D_GNU_SOURCE -L$(PREFIX)/lib -I$(PREFIX)/include" LDFLAGS=" -L$(PREFIX)/lib "  CFLAGS="-D_GNU_SOURCE -L$(PREFIX)/lib -I$(PREFIX)/include"

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

#CONFIGURE_ARGS = $(DIRPATHS) --oldincludedir=$(PREFIX)/include --enable-bdb=no --enable-hdb=no --enable-ldbm --enable-ldbm-api=gdbm --with-tls=openssl --with-cyrus-sasl --enable-dynamic --without-gssapi
CONFIGURE_ARGS = $(DIRPATHS) --oldincludedir=$(PREFIX)/include --with-tls=openssl --enable-dynamic --without-gssapi

include ../category.mk

PRE_CONFIGURE = export LD_LIBRARY_PATH=$(PREFIX)/lib
