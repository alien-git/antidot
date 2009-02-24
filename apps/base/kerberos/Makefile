GARNAME = krb5
GARVERSION = 1.3.4
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.gz

LIBDEPS = apps/gcc/gcc

MASTER_SITES = 
AUTHOR = MIT
URL = http://web.mit.edu/Kerberos/
LICENSE = 

DESCRIPTION = Kerberos5

CONFIGURE_SCRIPTS = $(WORKSRC)/src/configure
BUILD_SCRIPTS = $(WORKSRC)/src/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/src/Makefile
TEST_SCRIPTS =

CONFIGURE_ARGS = --prefix=$(PREFIX) --enable-dns=no

include ../category.mk


