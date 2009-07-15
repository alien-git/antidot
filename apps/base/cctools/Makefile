GARNAME = cctools
GARVERSION = 2_5_3
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION)-src.tar.gz
DISTNAME = $(GARNAME)-$(GARVERSION)-src
PATCHFILES = configure.patch

#http://www.cse.nd.edu/~ccl/software/files/cctools-2_5_3-src.tar.gz
MASTER_SITES =  http://www.cse.nd.edu/~ccl/software/files/
AUTHOR = Douglas Thain
URL = http://www.cse.nd.edu/~ccl
LICENSE = BSD

LIBDEPS = apps/base/gdbm apps/base/readline apps/base/kerberos

DESCRIPTION = Cooperative Computing Tools

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS =

#CONFIGURE_ENV = env LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64" CFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64" CCFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64"
#BUILD_ENV = env LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64" CFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64" CCFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64"


CONFIGURE_ARGS = --prefix $(PREFIX) 
#--with-gdbm-path $(PREFIX) --with-readline-path $(PREFIX) --with-zlib-path $(PREFIX)

include ../category.mk

PRE_CONFIGURE = (export LD_LIBRARY_PATH=$$LD_LIBRARY_PATH:$(PREFIX)/lib:$(PREFIX)/lib64)

# unexport prefix exec_prefix bindir sbindir libexecdir datadir sysconfdir sharedstatedir localstatedir libdir infodir lispdir includedir mandir docdir sourcedir

