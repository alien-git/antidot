GARNAME = openldap
GARVERSION = 2.0.27
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tgz
PATCHFILES = 

MASTER_SITES = ftp://sunsite.cnlab-switch.ch/mirror/OpenLDAP/openldap-release/

LIBDEPS = apps/base/openssl apps/base/cyrus-sasl apps/base/db 

DESCRIPTION = OpenLDAP
URL = http://www.openldap.org/
AUTHOR = 
LICENSE = OpenLDAP 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --oldincludedir=$(PREFIX) --with-ldbm-api=gdbm --with-tls=openssl --enable-cyrus-sasl=$(PREFIX)/include

include ../category.mk
