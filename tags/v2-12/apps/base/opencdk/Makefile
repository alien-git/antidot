GARNAME = opencdk
GARVERSION = 0.5.9
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES =  ftp://ftp.gnutls.org/pub/gnutls/opencdk/

LIBDEPS = apps/base/libgcrypt

AUTHOR  = Torrey McMahon
LICENSE = LGPL
URL     = http://www.gnu.org/software/gnutls/

DESCRIPTION = Open crypto development kit

CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX)

include ../category.mk
