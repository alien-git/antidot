GARNAME = openldap
GARVERSION = 2.0.27
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tgz
PATCHFILES = 

MASTER_SITES = ftp://sunsite.cnlab-switch.ch/mirror/OpenLDAP/openldap-release/

LIBDEPS = apps/base/openssl apps/base/cyrus-sasl apps/base/db 

DESCRIPTION = OpenLDAP

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --oldincludedir=$(PREFIX) --with-ldbm-api=gdbm --with-tls=openssl --enable-cyrus-sasl=$(PREFIX)/include
#CONFIGURE_ARGS = $(DIRPATHS) --oldincludedir=$(PREFIX) --with-tls=openssl --enable-cyrus-sasl=$(PREFIX)/include

#NODIRPATHS = --bindir --exec_prefix --sbindir --libexecdir --datadir --sysconfdir --sharedstatedir --localstatedir --libdir --infodir --includedir --mandir

include ../category.mk
