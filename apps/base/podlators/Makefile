GARNAME = podlators
GARVERSION = 1.27
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/R/RR/RRA/ http://www.cpan.org/authors/id/R/RR/RRA/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/R/RR/RRA/

LIBDEPS = apps/base/perl

DESCRIPTION = Translators for Plain Old Documentation format
URL = http://www.eyrie.org/~eagle/software/podlators/
AUTHOR = Russ Allbery
LICENSE = Perl or Artisitc

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

