GARNAME = Linux-PAM
GARVERSION = 1.1.1

ifeq ($(shell uname),Darwin)
    GARVERSION = 0.78
    PATCHFILES = makefile.diff configure.diff
endif


CATEGORIES = apps-libs
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://www.kernel.org/pub/linux/libs/pam/library/ http://www.kernel.org/pub/linux/libs/pam/pre/library/   http://ftp.kernel.org/pub/linux/libs/pam/library/

#MASTER_SITES = http://www.kernel.org/pub/linux/libs/pam/pre/library/ 
#http://www.kernel.org/pub/linux/libs/pam/library/Linux-PAM-1.1.0.tar.gz

LIBDEPS = apps/gcc/gcc apps/devel/libtool apps/devel/automake

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
    PRE_INSTALL  = (cd $(PREFIX)/lib; ln -sf libpam.dylib.0.78 libpam.dylib.0; ln -sf libpamc.dylib.0.78 libpamc.dylib.0)
endif

