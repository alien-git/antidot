GARNAME = Log-Dispatch-FileRotate
GARVERSION = 1.19
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://search.cpan.org/CPAN/authors/id/M/MA/MARKPF/Log-Dispatch-FileRotate-1.19.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/M/MA/MARKPF/

LIBDEPS = apps/base/Log-Log4perl apps/base/Log-Dispatch apps/base/DateManip apps/base/Params-Validate 

DESCRIPTION = Log to files that archive and rotate themselves  
AUTHOR = Mark Pfeiffer 
URL = http://search.cpan.org/~markpf/
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST =

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

