GARNAME = Net-SSLeay
GARVERSION = 1.32
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = 

MASTER_SITES = $(CPAN_MIRROR)/authors/id/F/FL/FLORA/ http://www.cpan.org/authors/id/F/FL/FLORA/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/F/FL/FLORA/

LIBDEPS = apps/base/globus-toolkit apps/base/Array-Compare apps/base/Test-Exception apps/base/Tree-DAG_Node apps/base/Test-Warn

DESCRIPTION = Perl extension for using OpenSSL
AUTHOR = Sampo Kellomaki
URL = http://cpan.uwinnipeg.ca/~sampo
LICENSE = OpenSSL

AUTOTEST = testForAliEnPerlModule Net::SSLeay $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = # $(WORKSRC)/Makefile

#ifeq ($(shell uname),Darwin)
#CONFIGURE_ARGS = 
#CONFIGURE_ENV = PERL_MM_USE_DEFAULT=1
#else
CONFIGURE_ARGS = LIBS="-L$(PREFIX)/globus/lib -lssl_$(GLOBUS_FLAVOR) -lcrypto_$(GLOBUS_FLAVOR)"
CONFIGURE_ENV = env OPENSSL_PREFIX=$(PREFIX)/globus PERL_MM_USE_DEFAULT=1
#endif

BUILD_ARGS =  

include ../category.mk

