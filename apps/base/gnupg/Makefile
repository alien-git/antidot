GARNAME = gnupg
GARVERSION = 1.4.1
CATEGORIES = libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.bz2
PATCHFILES = fix.diff

MASTER_SITES = ftp://ftp.gnupg.org/gcrypt/gnupg/ 

LIBDEPS = apps/gcc/gcc

DESCRIPTION = The GNU Privacy Guard
URL = http://www.gnupg.org/
AUTHOR = 
LICENSE = GPL2 

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS)

include ../category.mk
