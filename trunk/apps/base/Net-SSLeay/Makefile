GARNAME = Net-SSLeay
GARVERSION = 1.35
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = 

MASTER_SITES = $(CPAN_MIRROR)/authors/id/F/FL/FLORA/ http://www.cpan.org/authors/id/F/FL/FLORA/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/F/FL/FLORA/

LIBDEPS = apps/base/Array-Compare apps/base/Test-Exception apps/base/Tree-DAG_Node apps/base/Test-Warn apps/base/openssl

DESCRIPTION = Perl extension for using OpenSSL
AUTHOR = Sampo Kellomaki
URL = http://cpan.uwinnipeg.ca/~sampo
LICENSE = OpenSSL

AUTOTEST = testForAliEnPerlModule Net::SSLeay $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = # $(WORKSRC)/Makefile

CONFIGURE_ARGS = LIBS="-L$(PREFIX)/lib -L$(PREFIX)/lib64  -lssl -lcrypto" INC="-I$(PREFIX)/include/"
CONFIGURE_ENV = env OPENSSL_PREFIX=$(PREFIX) PERL_MM_USE_DEFAULT=1


include ../category.mk

