GARNAME = Linux-PAM
GARVERSION = 1.1.0

ifeq ($(shell uname),Darwin)
    GARVERSION = 0.78
    PATCHFILES = makefile.diff configure.diff
endif


CATEGORIES = apps-libs
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://www.kernel.org/pub/linux/libs/pam/library/ http://www.kernel.org/pub/linux/libs/pam/pre/library/  

#MASTER_SITES = http://www.kernel.org/pub/linux/libs/pam/pre/library/ 
#http://www.kernel.org/pub/linux/libs/pam/library/Linux-PAM-1.1.0.tar.gz

LIBDEPS = apps/gcc/gcc

DESCRIPTION =  Linux-PAM (Pluggable Authentication Modules for Linux)
AUTHOR =  Andrew Morgan
URL = http://osx.freshmeat.net/redir/linux-pam/5890/url_homepage/pam
LICENSE = GPL

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --disable-selinux --includedir=$(PREFIX)/include/security

ifeq ($(shell uname),Darwin)
    CONFIGURE_ARGS = $(DIRPATHS) --enable-includedir=$(PREFIX)/include
endif

include ../category.mk

ifeq ($(shell uname),Darwin)
    PRE_CONFIGURE = (cd $(WORKSRC); autoconf)
    PRE_INSTALL  = (cd $(PREFIX)/lib; rm -f libpam.so.0; ln -s libpam.so.0.78 libpam.so.0)
endif

