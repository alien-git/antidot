GARNAME = Gtk-Perl
GARVERSION = 0.7009
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/M/ML/MLEHMANN/ http://www.cpan.org/authors/id/M/ML/MLEHMANN/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/M/ML/MLEHMANN/

LIBDEPS = apps/base/perl

DESCRIPTION = binding of the Gtk library used by GIMP

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  --without-guessing
BUILD_ARGS =  

include ../category.mk

PRE_CONFIGURE = mkdir -p $(WORKSRC)/Gtk/build && touch $(WORKSRC)/Gtk/build/perl-gtk-ref.pod
