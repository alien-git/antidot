GARNAME = tokenauthz
GARVERSION = 1.1.9
CATEGORIES = libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#ifeq ($(shell uname),Darwin)
#    PATCHFILES = configure.patch
#endif

#pcalienstorage:/opt/packages/src/xrd3/repository/tokenauthz-1.1.9.tar.gz
MASTER_SITES = http://alitorrent.cern.ch/src/xrd3/repository/

LIBDEPS = apps/perl/perl apps/devel/swig apps/system/openssl

AUTHOR  = Andreas Peters and Derek Feichtinger
LICENSE = 
URL     = 

DESCRIPTION = Class to read authorization envelopes

CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ARGS = --prefix=$(PREFIX)/api --with-base-directory=$(PREFIX) --enable-perlint --with-perl=$(PREFIX)/bin/perl
	
include ../category.mk

