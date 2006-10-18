GARNAME = cctools
GARVERSION = 2.2.1
#GARVERSION = 2.0.14
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = # configure.diff

MASTER_SITES =  
AUTHOR = Douglas Thain
URL = http://www.cse.nd.edu/~ccl
LICENSE = BSD

LIBDEPS = apps/base/gdbm apps/base/readline apps/base/globus-toolkit

DESCRIPTION = Cooperative Computing Tools

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS =

CONFIGURE_ENV  = # GLOBUS_LOCATION= 

CONFIGURE_ARGS = --prefix $(PREFIX) --with-gdbm-path $(PREFIX) --with-readline-path $(PREFIX)  --with-globus-path $(GLOBUS_LOCATION)

include ../category.mk

# unexport prefix exec_prefix bindir sbindir libexecdir datadir sysconfdir sharedstatedir localstatedir libdir infodir lispdir includedir mandir docdir sourcedir

