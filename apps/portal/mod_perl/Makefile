GARNAME = mod_perl
GARVERSION = 2.0.8
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://download.nextag.com/apache/perl/

LIBDEPS = apps/perl/perl apps/portal/httpd

DESCRIPTION = mod_perl is the marriage of Apache and Perl
URL = http://perl.apache.org
AUTHOR = 
LICENSE = Apache

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = MP_APXS=$(PREFIX)/httpd/bin/apxs

include ../category.mk


