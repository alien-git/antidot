GARNAME = globus-toolkit
CATEGORIES = apps-tools
GARVERSION = 4.2.1

DISTFILES  = gt$(GARVERSION)-all-source-installer.tar.gz
DISTNAME  = gt$(GARVERSION)-all-source-installer

LIBDEPS  = apps/devel/ant apps/base/libxml2 apps/base/eugridpma-carep apps/base/perl
MASTER_SITES = http://www-unix.globus.org/ftppub/gt4/4.2.1/installers/src/

DESCRIPTION = Globus Toolkit
URL = http://www.globus.org/
LICENSE = Globus 
AUTHOR = Globus Alliance
 
CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = env GLOBUS_LOCATION=$(GLOBUS_LOCATION) GPT_LOCATION=$(GPT_LOCATION) GLOBUS_FLAVOR=$(GLOBUS_FLAVOR) JAVA_HOME=$(PREFIX)/jdk/ CFLAGS="-I$(PREFIX)/jdk/include" CXXFLAGS="-I$(PREFIX)/jdk/include -I$(PREFIX)/jdk/include/linux" CPPFLAGS="-I$(PREFIX)/jdk/include -I$(PREFIX)/jdk/include/linux" LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64" GPT_LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64 -L$(PREFIX)/globus/lib"
BUILD_ENV = env GLOBUS_LOCATION=$(GLOBUS_LOCATION) GPT_LOCATION=$(GPT_LOCATION) GLOBUS_FLAVOR=$(GLOBUS_FLAVOR) JAVA_HOME=$(PREFIX)/jdk/ CFLAGS="-I$(PREFIX)/jdk/include" CXXFLAGS="-I$(PREFIX)/jdk/include -I$(PREFIX)/jdk/include/linux" CPPFLAGS="-I$(PREFIX)/jdk/include -I$(PREFIX)/jdk/include/linux" LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64" GPT_LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64 -L$(PREFIX)/globus/lib"
INSTALL_ENV = env GLOBUS_LOCATION=$(GLOBUS_LOCATION) GPT_LOCATION=$(GPT_LOCATION) GLOBUS_FLAVOR=$(GLOBUS_FLAVOR) JAVA_HOME=$(PREFIX)/jdk/ CFLAGS="-I$(PREFIX)/jdk/include" CXXFLAGS="-I$(PREFIX)/jdk/include -I$(PREFIX)/jdk/include/linux" CPPFLAGS="-I$(PREFIX)/jdk/include -I$(PREFIX)/jdk/include/linux" LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64" GPT_LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64 -L$(PREFIX)/globus/lib" 

CONFIGURE_ARGS = --prefix=$(GLOBUS_LOCATION) --with-flavor=$(GLOBUS_FLAVOR) --with-openssl=$(PREFIX)  --with-krb5=$(PREFIX)

include ../category.mk

PRE_CONFIGURE = (rm -rf $(GLOBUS_LOCATION))
