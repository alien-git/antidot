GARNAME = Crypt-SSLeay
GARVERSION = 0.64
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = Makefile.PL.patch

#http://search.cpan.org/CPAN/authors/id/D/DL/DLAND/Crypt-SSLeay-0.57_01.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/N/NA/NANIS/

LIBDEPS = apps/system/openssl apps/perl/LWP-Protocol-https apps/perl/Try-Tiny

DESCRIPTION = OpenSSL glue that provides LWP https support
AUTHOR = Joshua Chamas
URL = http://cpan.uwinnipeg.ca/~chamas
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

BUILD_ARGS =  

ifeq ($(shell uname),Darwin)
    CONFIGURE_ARGS = -default $(PREFIX)  LIBS="-L$(PREFIX)/lib -lssl -lcrypto" INC="-I$(PREFIX)/include" 
else
    CONFIGURE_ARGS = -default $(PREFIX) -lib "$(PREFIX)" LIBS="-L$(PREFIX)/lib -lssl -lcrypto" INC="-I$(PREFIX)/include" 
endif 

CONFIGURE_ENV  =  

include ../category.mk


