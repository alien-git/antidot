GARNAME = bbftp-client
GARVERSION = 3.2.0
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = Makefile.in.diff
 
MASTER_SITES = ftp://ftp.in2p3.fr/pub/bbftp/

LIBDEPS = apps/base/gfw

DESCRIPTION = BaBar file transfer protocol
AUTHOR = Gilles Farrache 
URL = http://doc.in2p3.fr/bbftp/index.html
LICENSE = GPL

CONFIGURE_SCRIPTS = $(WORKSRC)/bbftpc/configure
BUILD_SCRIPTS = $(WORKSRC)/bbftpc/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/bbftpc/Makefile
TEST_SCRIPTS = 

CONFIGURE_ARGS = --prefix=$(PREFIX)   \
                 --without-gzip \
                 --enable-authentication=certificates \
                 --with-gsi=$(GLOBUS_LOCATION) \
                 --with-globus-flavor=$(GLOBUS_FLAVOR)

include ../category.mk
