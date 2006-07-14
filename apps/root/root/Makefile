GARNAME = root
GARVERSION = 5.11.6
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION)p1.tar.gz
PATCHFILES =  # macos.diff 

MASTER_SITES = 

LIBDEPS = apps/alien/gapi apps/server/mysql apps/base/ml-gsoapclient apps/base/ApMon-CPP

DESCRIPTION = ROOT- An Object-Oriented Data Analysis Framework
URL = http://root.cern.ch
AUTHOR = ROOT Team
LICENSE = ROOT
 
CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = env GLOBUS_LOCATION= ROOTSYS=$(WORKSRC)
INSTALL_ENV   = env GLOBUS_LOCATION= ROOTSYS=$(WORKSRC)
BUILD_ENV     = env GLOBUS_LOCATION= ROOTSYS=$(WORKSRC)

CONFIGURE_ARGS = --enable-alien --with-alien-incdir=$(PREFIX)/api/include --with-alien-libdir=$(PREFIX)/api/lib --enable-xrootd --with-xrootd=$(PREFIX)/api --with-ssl-incdir=$(PREFIX)/include --with-ssl-libdir=$(PREFIX)/lib  --with-mysql-incdir=$(PREFIX)/include/mysql --with-mysql-libdir=$(PREFIX)/lib/mysql --with-monalisa-incdir=$(PREFIX)/api/include --with-monalisa-libdir=$(PREFIX)/api/lib --with-pythia6-uscore=SINGLE --enable-cern --enable-mathmore --enable-mathcore --enable-roofit --enable-asimage --enable-minuit2  

include ../category.mk

unexport prefix exec_prefix bindir sbindir libexecdir datadir sysconfdir sharedstatedir localstatedir libdir infodir lispdir includedir mandir docdir sourcedir CFLAGS CPPFLAGS CXXFLAGS

POST_INSTALL = (cd $(WORKSRC); make dist && cd .. && tar -C $(PREFIX) -zxf root_*.tar.gz && rm -rf root_*.tar.gz $(PREFIX)/root && mv $(PREFIX)/root-$(GARVERSION) $(PREFIX)/root)

