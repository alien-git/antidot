GARNAME = Crypt-SSLeay
GARVERSION = 0.51
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = 01.diff

MASTER_SITES = $(CPAN_MIRROR)/authors/id/C/CH/CHAMAS/ http://www.cpan.org/authors/id/C/CH/CHAMAS/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/C/CH/CHAMAS/

LIBDEPS = apps/base/perl apps/base/openssl

DESCRIPTION = 

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

BUILD_ARGS =  
CONFIGURE_ARGS = -default $(PREFIX)  
CONFIGURE_ENV  =  

include ../category.mk


