GARNAME = apache
GARVERSION = 1.3.33
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)_$(GARVERSION).tar.gz
DISTNAME  = $(GARNAME)_$(GARVERSION)

MASTER_SITES = http://apache.crihan.fr/dist/httpd/ http://alien.cern.ch/cache/

LIBDEPS = apps/base/openssl 
#BUILDDEPS = apps/portal/mod_ssl
DESCRIPTION = Apache Web Server
URL = http://www.apache.org
AUTHOR = Apache Project
LICENSE = Apache

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --prefix=$(PREFIX)/apache --enable-module=most --enable-shared=max

NODIRPATHS = --bindir --exec_prefix --sbindir --libexecdir --datadir --sysconfdir --sharedstatedir --localstatedir --libdir --infodir --includedir --mandir

include ../category.mk
