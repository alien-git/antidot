GARNAME = bbftp
GARVERSION = 3.0.1
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = 01.diff 02.diff 03.diff bbftpc_rfio.patch bbftpd_rfio.patch
 
MASTER_SITES = http://alien.cern.ch/cache/ ftp://ftp.in2p3.fr/pub/bbftp/

LIBDEPS = apps/base/globus

DESCRIPTION = BaBar file transfer protocol
AUTHOR = Gilles Farrache 
URL = http://doc.in2p3.fr/bbftp/index.html
LICENSE = GPL

ifeq "$(shell uname)" "Darwin"
CONFIGURE_SCRIPTS =
BUILD_SCRIPTS =
INSTALL_SCRIPTS =
else
CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
endif
TEST_SCRIPTS = 

CONFIGURE_ARGS = $(DIRPATHS) 

include ../category.mk
