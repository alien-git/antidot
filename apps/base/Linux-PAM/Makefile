GARNAME = Linux-PAM
GARVERSION = 0.78
CATEGORIES = apps-libs
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.bz2
PATCHFILES = makefile.diff

MASTER_SITES =   http://alien.cern.ch/cache/ http://www.kernel.org/pub/linux/libs/pam/pre/library/ 

LIBDEPS = apps/gcc/gcc

DESCRIPTION =  Linux-PAM (Pluggable Authentication Modules for Linux)
AUTHOR =  Andrew Morgan
URL = http://osx.freshmeat.net/redir/linux-pam/5890/url_homepage/pam
LICENSE = GPL

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS) --enable-includedir=$(PREFIX)/include

include ../category.mk

PRE_CONFIGURE = (cd $(WORKSRC); autoconf)
POST_INSTALL  = (cd $(PREFIX)/lib; rm -f libpam.so.0; ln -s libpam.so.0.78 libpam.so.0)