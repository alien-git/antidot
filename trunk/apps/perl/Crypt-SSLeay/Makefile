GARNAME = Crypt-SSLeay
GARVERSION = 0.57
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = Makefile.PL.patch

#http://search.cpan.org/CPAN/authors/id/D/DL/DLAND/Crypt-SSLeay-0.57_01.tar.gz
MASTER_SITES = $(CPAN_MIRROR)/authors/id/C/CH/CHAMAS/ http://www.cpan.org/authors/id/C/CH/CHAMAS/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/C/CH/CHAMAS/ http://search.cpan.org/CPAN/authors/id/D/DL/DLAND/

LIBDEPS = apps/perl/perl apps/system/openssl

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


