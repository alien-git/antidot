GARNAME = mod_perl
GARVERSION = 1.29
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://alien.cern.ch/cache/

LIBDEPS = apps/base/perl apps/portal/apache apps/base/libwww-perl apps/base/HTML-Parser

DESCRIPTION = The Apache interface to perl

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS =  $(WORKSRC)/Makefile
INSTALL_SCRIPTS =  $(WORKSRC)/Makefile

APACHE_SRC=../../../../portal/apache/work/apache_$(APACHE)/src

CONFIGURE_ARGS = "APACHE_SRC=$(APACHE_SRC) DO_HTTPD=1 USE_APACI=1 EVERYTHING=1 SSL_BASE=$(PREFIX) APACHE_PREFIX=$(PREFIX)/apache APACI_ARGS=--prefix=$(PREFIX)/apache,--enable-module=ssl,--enable-module=most,--enable-shared=max,--disable-shared=perl"


include ../category.mk

PRE_CONFIGURE = cp files/configure $(WORKSRC); cd ../apache/work/apache_$(APACHE); make clean 

