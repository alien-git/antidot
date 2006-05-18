GARNAME = libgpg-error
GARVERSION = 1.3
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

PATCHFILES = macosx.diff

MASTER_SITES =  ftp://ftp.gnupg.org/gcrypt/libgpg-error/

LIBDEPS = apps/gcc/gcc

AUTHOR  = GnuPG team
LICENSE = LGPL
URL     = http://www.gnupg.org/

DESCRIPTION =  Libgpg-error is helper library used by a couple of other projects to provide a common set of error codes and descriptions.

CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --disable-nls

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); rm -rf config.cache; cd src; rm  err-codes.h err-sources.h gpg-error.h)
