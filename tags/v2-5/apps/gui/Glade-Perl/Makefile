GARNAME = Glade-Perl
GARVERSION = 0.61
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/D/DM/DMUSGR/ http://www.cpan.org/authors/id/D/DM/DMUSGR/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/D/DM/DMUSGR/

LIBDEPS = apps/base/XML-Parser apps/gui/Gtk-Perl apps/base/Unicode-String

DESCRIPTION = UI builder and source generator
AUTHOR = Dermot Musgrove
URL = http://cpan.uwinnipeg.ca/~dmusgr
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule Glade::PerlProject $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

