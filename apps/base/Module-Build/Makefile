GARNAME = Module-Build
GARVERSION = 0.2607
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/K/KW/KWILLIAMS/ http://www.cpan.org/authors/id/K/KW/KWILLIAMS/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/K/KW/KWILLIAMS/

LIBDEPS = apps/base/perl apps/base/Module-Signature  apps/base/Archive-Tar apps/base/ExtUtils-CBuilder apps/base/YAML


DESCRIPTION = Build, test, and install Perl modules

CONFIGURE_SCRIPTS = $(WORKSRC)/Build.PL
BUILD_SCRIPTS = $(WORKSRC)/Build
INSTALL_SCRIPTS = $(WORKSRC)/Build

CONFIGURE_ENV = 
BUILD_ARGS =  

include ../category.mk

