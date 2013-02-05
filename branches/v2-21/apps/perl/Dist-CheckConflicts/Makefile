GARNAME = Dist-CheckConflicts
GARVERSION = 0.02
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://search.cpan.org/CPAN/authors/id/D/DO/DOY/Dist-CheckConflicts-0.02.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/D/DO/DOY/

LIBDEPS = apps/perl/Test-Fatal apps/perl/Sub-Exporter

DESCRIPTION = declare version conflicts for your dist  
AUTHOR = Jesse Luehrs 
URL = http://search.cpan.org/~doy
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

