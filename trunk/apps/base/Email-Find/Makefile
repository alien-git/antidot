GARNAME = Email-Find
GARVERSION = 0.09
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/M/MI/MIYAGAWA/ http://www.cpan.org/authors/id/M/MI/MIYAGAWA/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/M/MI/MIYAGAWA/

LIBDEPS = apps/base/perl apps/base/Email-Valid apps/base/MailTools

DESCRIPTION = Find RFC 822 email addresses in plain text

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

