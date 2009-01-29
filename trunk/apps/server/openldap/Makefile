GARNAME = openldap
GARVERSION = 2.3.43
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tgz
PATCHFILES = install.diff core.schema.patch

MASTER_SITES = ftp://sunsite.cnlab-switch.ch/mirror/OpenLDAP/openldap-release/

LIBDEPS = apps/base/openssl apps/base/cyrus-sasl apps/base/db apps/base/gdbm

DESCRIPTION = OpenLDAP
URL = http://www.openldap.org/
AUTHOR = 
LICENSE = OpenLDAP 

CONFIGURE_ENV = env CPPFLAGS=" -L$(PREFIX)/lib  -L$(PREFIX)/lib64 -I$(PREFIX)/include" LDFLAGS=" -L$(PREFIX)/lib  -L$(PREFIX)/lib64" CFLAGS=" -L$(PREFIX)/lib -L$(PREFIX)/lib64 -I$(PREFIX)/include"
BUILD_ENV = env CPPFLAGS=" -L$(PREFIX)/lib -L$(PREFIX)/lib64 -I$(PREFIX)/include" LDFLAGS=" -L$(PREFIX)/lib -L$(PREFIX)/lib64"  CFLAGS=" -L$(PREFIX)/lib -L$(PREFIX)/lib64 -I$(PREFIX)/include"

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

#CONFIGURE_ARGS = $(DIRPATHS) --oldincludedir=$(PREFIX)/include --enable-bdb=no --enable-hdb=no --enable-ldbm --enable-ldbm-api=gdbm --with-tls=openssl --with-cyrus-sasl --enable-dynamic --without-gssapi
CONFIGURE_ARGS = $(DIRPATHS) --oldincludedir=$(PREFIX)/include --with-tls=openssl --with-cyrus-sasl --enable-dynamic --without-gssapi

include ../category.mk

PRE_CONFIGURE = export LD_LIBRARY_PATH=$(PREFIX)/lib:$(PREFIX)/lib64
