GARNAME = Plack
GARVERSION = 1.0016
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://search.cpan.org/CPAN/authors/id/M/MI/MIYAGAWA/Plack-1.0001.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/M/MI/MIYAGAWA/

LIBDEPS = apps/perl/Test-Requires apps/perl/File-ShareDir apps/perl/Test-TCP apps/perl/Try-Tiny	apps/perl/Hash-MultiValue apps/perl/URI apps/perl/Devel-StackTrace apps/perl/HTTP-Body apps/perl/libwww-perl apps/perl/Devel-StackTrace-AsHTML apps/perl/Stream-Buffered

DESCRIPTION = Perl Superglue for Web frameworks and Web Servers (PSGI toolkit)
LICENSE = Perl
URL =  http://search.cpan.org/CPAN/authors/id/M/MI/MIYAGAWA/
AUTHOR = Miyagawa

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

