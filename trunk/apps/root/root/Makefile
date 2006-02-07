GARNAME = root
GARVERSION = 5.9.1
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = 

MASTER_SITES = 

LIBDEPS = apps/alien/gapi

DESCRIPTION = ROOT- An Object-Oriented Data Analysis Framework
URL = http://root.cern.ch
AUTHOR = ROOT Team
LICENSE = ROOT
 
CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = env GLOBUS_LOCATION= 

CONFIGURE_ARGS = --prefix=$(PREFIX)/root --bindir=$(PREFIX)/root/bin --libdir=$(PREFIX)/root/lib --incdir=$(PREFIX)/root/include --etcdir=$(PREFIX)/etc --datadir=$(PREFIX)/root --mandir=$(PREFIX)/man/man1 --docdir=$(PREFIX)/root --incdir=$(PREFIX)/root/include --enable-alien --with-alien-incdir=$(PREFIX)/api/include --with-alien-libdir=$(PREFIX)/api/lib --disable-xrootd --with-ssl-incdir=$(PREFIX)/include --with-ssl-libdir=$(PREFIX)/lib --with-monalisa-incdir=$(PREFIX)/include --with-monalisa-libdir=$(PREFIX)/lib

include ../category.mk

unexport prefix exec_prefix bindir sbindir libexecdir datadir sysconfdir sharedstatedir localstatedir libdir infodir lispdir includedir mandir docdir sourcedir
