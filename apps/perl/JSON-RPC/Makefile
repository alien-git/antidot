GARNAME = JSON-RPC
GARVERSION = 1.03
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://search.cpan.org/CPAN/authors/id/D/DM/DMAKI/JSON-RPC-1.03.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/D/DM/DMAKI/

LIBDEPS = apps/perl/perl apps/perl/Plack apps/perl/Router-Simple apps/perl/Class-Accessor-Lite apps/perl/JSON apps/perl/LWP-Protocol-https

DESCRIPTION = JSON-RPC server
LICENSE = Perl
URL = http://search.cpan.org/~makamaka/
AUTHOR = Makamaka

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

