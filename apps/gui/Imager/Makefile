GARNAME = Imager
GARVERSION = 0.44
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/T/TO/TONYC/ http://www.cpan.org/authors/id/T/TO/TONYC/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/T/TO/TONYC/

LIBDEPS = apps/base/perl

DESCRIPTION = Draws, reads and writes Imagefiles

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = env IM_ENABLE="jpeg png gif T1-fonts freetype1" IM_INCPATH=$(PREFIX)/include/freetype:$(PREFIX)/include IM_LIBPATH=$(PREFIX)/lib IM_SUPPRESS_PROMPT=1 
  
BUILD_ARGS =  

include ../category.mk

