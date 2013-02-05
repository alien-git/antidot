GARNAME = Net-DNS
GARVERSION = 0.72
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://search.cpan.org/CPAN/authors/id/N/NL/NLNETLABS/Net-DNS-0.72.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/N/NL/NLNETLABS/

LIBDEPS = apps/perl/Net-IP apps/perl/Digest-HMAC

DESCRIPTION = Perl interface to the DNS resolver  
AUTHOR = Olaf Kolkman
URL = http://cpan.uwinnipeg.ca/~olaf
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = # $(WORKSRC)/Makefile

AUTOTEST =

CONFIGURE_ENV = env PERL_MM_USE_DEFAULT=1
BUILD_ARGS =  

include ../category.mk

