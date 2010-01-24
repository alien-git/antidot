GARNAME = OpenCA
GARVERSION = 0.9.3-rc1
CATEGORIES = apps-tools
DISTFILES = openca-$(GARVERSION).tar.gz
DISTNAME = openca-$(GARVERSION)

PATCHFILES = Makefile.diff

MASTER_SITES = http://switch.dl.sourceforge.net/sourceforge/openca/

LIBDEPS = apps/base/Digest-HMAC apps/base/libintl-perl apps/base/MIME-Types apps/base/MIME-Lite apps/base/Net-Server apps/base/X500-DN apps/base/XML-Twig apps/base/DB_File apps/base/IO-Socket-SSL

DESCRIPTION =  OpenSource Certification Authority Toolkit 
URL = http://www.openca.org/
AUTHOR = OpenCA LABS
LICENSE = BSD

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = # $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --with-openssl-prefix=$(PREFIX) --with-httpd-fs-prefix=$(PREFIX)/httpd --with-openca-user=$(USER) --with-openca-group=$(USER) --with-httpd-user=$(USER) --with-httpd-group=$(USER)

INSTALL_TARGET = install-ca

include ../category.mk

