GARNAME = openldap
GARVERSION = 2.0.27
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tgz
PATCHFILES = install.diff
ifeq ($(shell uname),Darwin)
PATCHFILES += macos.diff
endif

MASTER_SITES = ftp://sunsite.cnlab-switch.ch/mirror/OpenLDAP/openldap-release/

LIBDEPS = apps/base/openssl apps/base/cyrus-sasl apps/base/db apps/base/gdbm

DESCRIPTION = OpenLDAP
URL = http://www.openldap.org/
AUTHOR = 
LICENSE = OpenLDAP 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --oldincludedir=$(PREFIX)/include --with-ldbm-api=gdbm --with-tls=openssl --enable-cyrus-sasl=$(PREFIX)/include --enable-dynamic

include ../category.mk
