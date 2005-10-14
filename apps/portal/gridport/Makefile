GARNAME = gridport
GARVERSION = 2.3.2
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = 

LIBDEPS = apps/base/globus-toolkit apps/base/Expect apps/base/perl-ldap

DESCRIPTION = Grid Portal
URL = http://gridport.net/index.cgi
AUTHOR = 
LICENCE = gridport

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(PREFIX)/apache/Gridport

include ../category.mk

PRE_CONFIGURE = cp files/configure $(WORKSRC)


