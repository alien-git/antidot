GARNAME = Imager
GARVERSION = 0.44
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/T/TO/TONYC/ http://www.cpan.org/authors/id/T/TO/TONYC/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/T/TO/TONYC/

LIBDEPS = apps/base/perl apps/gui/t1lib apps/gui/freetype2

DESCRIPTION = Draws, reads and writes Imagefiles
AUTHOR = Tony Cook
URL = http://cpan.uwinnipeg.ca/~tonyc
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule Imager $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule Imager $(GARVERSION)

CONFIGURE_ENV = env IM_ENABLE="jpeg png gif T1-fonts freetype1" IM_INCPATH=$(PREFIX)/include/freetype:$(PREFIX)/include IM_LIBPATH=$(PREFIX)/lib IM_SUPPRESS_PROMPT=1 

ifeq ($(shell uname -s),Darwin)
CONFIGURE_ARGS = "INC=-I$(PREFIX)/include/freetype -I$(PREFIX)/include -I/sw/include"
else
CONFIGURE_ARGS = "INC=-I$(PREFIX)/include/freetype -I$(PREFIX)/include"
endif
  
BUILD_ARGS =  

include ../category.mk

PRE_CONFIGURE = ( rm -f $(WORKSRC)/t/t30t1font.t )
