GARNAME = Linux-PAM
GARVERSION = 0.78
CATEGORIES = apps-libs
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.bz2
PATCHFILES = makefile.diff

MASTER_SITES =   http://alien.cern.ch/cache/ http://www.kernel.org/pub/linux/libs/pam/pre/library/ 

LIBDEPS = 

DESCRIPTION =  Linux-PAM (Pluggable Authentication Modules for Linux)

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --enable-includedir=$(PREFIX)/include

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); autoconf)
