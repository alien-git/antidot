GARNAME = mod_ssl
GARVERSION = 2.8.22-1.3.33
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://www.modssl.org/source/ http://alien.cern.ch/cache/

LIBDEPS = apps/base/openssl 

DESCRIPTION = The Apache insterface to OpenSSL

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = 
INSTALL_SCRIPTS = 

APACHE_DIR=../../../apache/work/apache_$(APACHE)

CONFIGURE_ARGS = $(DIRPATHS) --prefix=$(PREFIX) --with-apache=$(APACHE_DIR)

NODIRPATHS = --bindir --exec_prefix --sbindir --libexecdir --datadir --sysconfdir --sharedstatedir --localstatedir --libdir --infodir --includedir --mandir

include ../category.mk

PRE_CONFIGURE= touch ../apache/work/apache_$(APACHE)/src/Configuration.apaci