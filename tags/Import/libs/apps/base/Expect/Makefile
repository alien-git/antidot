GARNAME = Expect
GARVERSION = 1.15
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz


MASTER_SITES = $(CPAN_MIRROR)/authors/id/R/RG/RGIERSIG/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/R/RG/RGIERSIG/

LIBDEPS = apps/base/perl apps/base/IO-Tty 

DESCRIPTION = Perl version of Don Libes Tcl-Expect

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

