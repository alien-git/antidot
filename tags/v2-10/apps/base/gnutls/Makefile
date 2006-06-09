GARNAME = gnutls
GARVERSION = 1.0.25
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES =  

LIBDEPS = apps/base/libgcrypt

AUTHOR  = GNU
LICENSE = LGPL
URL     = http://www.gnu.org/software/gnutls/

DESCRIPTION =  GnuTLS is a project that aims to develop a library which provides a secure layer, over a reliable transport layer.

CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --with-included-libtasn1

include ../category.mk
