GARNAME = classads
GARVERSION = 0.9.7
CATEGORIES = apps-tools
DISTFILES  = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = ostream.diff limits.diff fnCall.diff util.diff  instantiations.diff makefile.diff

MASTER_SITES = ftp://ftp.cs.wisc.edu/condor/classad/c++/classads-0.9.7.tar.gz http://alien.cern.ch/cache/ 

LIBDEPS = 

DESCRIPTION = Condor ClassAd library

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  --prefix $(PREFIX) --enable-namespace --enable-flexible-member --lib-name classad

INSTALL_ARGS = DESTDIR=$(PREFIX)

BUILD_ENV   = REGEX_LIB_FLAGS="$(OWN_CXXLDFLAGS)"
INSTALL_ENV = REGEX_LIB_FLAGS="$(OWN_CXXLDFLAGS)"

include ../category.mk
