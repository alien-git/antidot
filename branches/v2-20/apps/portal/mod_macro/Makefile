GARNAME = mod_macro
GARVERSION = 1.1.11
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://cri.ensmp.fr/~coelho/mod_macro/

LIBDEPS = apps/portal/httpd

DESCRIPTION = mod_macro allows the definition and use of macros within apache runtime configuration files
URL = http://www.cri.ensmp.fr/~coelho/mod_macro
AUTHOR = Fabien Coelho
LICENSE = Apache

CONFIGURE_SCRIPTS = 
BUILD_SCRIPTS = 
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

INSTALL_ARGS = MP_APXS=$(PREFIX)/httpd/bin/apxs

include ../category.mk

PRE_INSTALL = (pwd; cp files/Makefile $(WORKSRC)) 
