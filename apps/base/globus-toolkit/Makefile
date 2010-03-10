GARNAME = globus-toolkit
CATEGORIES = apps-tools
GARVERSION = 4.2.1

DISTFILES  = gt$(GARVERSION)-all-source-installer.tar.gz
DISTNAME  = gt$(GARVERSION)-all-source-installer

LIBDEPS  = apps/devel/ant apps/base/libxml2 apps/base/eugridpma-carep apps/base/perl apps/base/openssl apps/base/XML-Parser
MASTER_SITES = http://www-unix.globus.org/ftppub/gt4/4.2.1/installers/src/

DESCRIPTION = Globus Toolkit
URL = http://www.globus.org/
LICENSE = Globus 
AUTHOR = Globus Alliance
 
CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = env GLOBUS_LOCATION=$(GLOBUS_LOCATION) GPT_LOCATION=$(GPT_LOCATION) GLOBUS_FLAVOR=$(GLOBUS_FLAVOR) CFLAGS="-I$(PREFIX)/jdk/include" CXXFLAGS="-I$(PREFIX)/jdk/include -I$(PREFIX)/jdk/include/linux" CPPFLAGS="-I$(PREFIX)/jdk/include -I$(PREFIX)/jdk/include/linux" LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64" GPT_LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64 -L$(PREFIX)/globus/lib"
BUILD_ENV = env GLOBUS_LOCATION=$(GLOBUS_LOCATION) GPT_LOCATION=$(GPT_LOCATION) GLOBUS_FLAVOR=$(GLOBUS_FLAVOR) CFLAGS="-I$(PREFIX)/jdk/include" CXXFLAGS="-I$(PREFIX)/jdk/include -I$(PREFIX)/jdk/include/linux" CPPFLAGS="-I$(PREFIX)/jdk/include -I$(PREFIX)/jdk/include/linux" LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64" GPT_LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64 -L$(PREFIX)/globus/lib"
INSTALL_ENV = env GLOBUS_LOCATION=$(GLOBUS_LOCATION) GPT_LOCATION=$(GPT_LOCATION) GLOBUS_FLAVOR=$(GLOBUS_FLAVOR)  CFLAGS="-I$(PREFIX)/jdk/include" CXXFLAGS="-I$(PREFIX)/jdk/include -I$(PREFIX)/jdk/include/linux" CPPFLAGS="-I$(PREFIX)/jdk/include -I$(PREFIX)/jdk/include/linux" LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64" GPT_LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64 -L$(PREFIX)/globus/lib" 

ifneq ($(shell uname),Darwin)
	CONFIGURE_ENV += JAVA_HOME=$(PREFIX)/jdk/ 
	BUILD_ENV += JAVA_HOME=$(PREFIX)/jdk/
	INSTALL_ENV += JAVA_HOME=$(PREFIX)/jdk/
endif

ifeq ($(shell uname -n),alimacx06.cern.ch)
	CONFIGURE_ENV +=  UNAME_PROCESSOR="x86_64"
	BUILD_ENV += UNAME_PROCESSOR="x86_64"
	INSTALL_ENV += UNAME_PROCESSOR="x86_64"
endif


CONFIGURE_ARGS = --prefix=$(GLOBUS_LOCATION) --with-flavor=$(GLOBUS_FLAVOR) --with-openssl=$(PREFIX)  --with-krb5=$(PREFIX)

include ../category.mk

PRE_CONFIGURE = (rm -rf $(GLOBUS_LOCATION))
