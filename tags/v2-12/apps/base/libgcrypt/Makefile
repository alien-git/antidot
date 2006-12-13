GARNAME = libgcrypt
GARVERSION = 1.2.3
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES =  ftp://ftp.gnupg.org/gcrypt/libgcrypt/

LIBDEPS = apps/base/libgpg-error

AUTHOR  = Moritz Schulte
LICENSE = LGPL
URL     = http://www.gnupg.org/

DESCRIPTION = Libgcrypt is a general-purpose cryptographic library based on the code from GnuPG

CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX)

include ../category.mk
