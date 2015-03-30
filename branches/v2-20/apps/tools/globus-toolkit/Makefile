GARNAME = globus-toolkit
CATEGORIES = apps-tools
GARVERSION = 5.2.1

DISTFILES  = gt$(GARVERSION)-all-source-installer.tar.gz
DISTNAME  = gt$(GARVERSION)-all-source-installer

#http://www.globus.org/ftppub/gt5/5.2/5.2.1/installers/src/gt5.2.1-all-source-installer.tar.gz
LIBDEPS  = apps/devel/ant apps/system/openssl apps/tools/eugridpma-carep-classic apps/tools/eugridpma-carep-slcs apps/tools/eugridpma-carep-iota apps/tools/eugridpma-carep-mics apps/perl/XML-Parser
MASTER_SITES = http://www.globus.org/ftppub/gt5/5.2/5.2.1/installers/src/

DESCRIPTION = Globus Toolkit
URL = http://www.globus.org/
LICENSE = Globus 
AUTHOR = Globus Alliance
 
CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = env GLOBUS_LOCATION=$(GLOBUS_LOCATION) GPT_LOCATION=$(GPT_LOCATION) GLOBUS_FLAVOR=$(GLOBUS_FLAVOR) CFLAGS="-I$(PREFIX)/include -I$(PREFIX)/jdk/include" CXXFLAGS="-I$(PREFIX)/jdk/include -I$(PREFIX)/jdk/include/linux" CPPFLAGS="-I$(PREFIX)/jdk/include -I$(PREFIX)/jdk/include/linux" LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64" GPT_LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64 -L$(PREFIX)/globus/lib"
BUILD_ENV = env GLOBUS_LOCATION=$(GLOBUS_LOCATION) GPT_LOCATION=$(GPT_LOCATION) GLOBUS_FLAVOR=$(GLOBUS_FLAVOR) CFLAGS="-I$(PREFIX)/include -I$(PREFIX)/jdk/include" CXXFLAGS="-I$(PREFIX)/jdk/include -I$(PREFIX)/jdk/include/linux" CPPFLAGS="-I$(PREFIX)/jdk/include -I$(PREFIX)/jdk/include/linux" LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64" GPT_LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64 -L$(PREFIX)/globus/lib"
INSTALL_ENV = env GLOBUS_LOCATION=$(GLOBUS_LOCATION) GPT_LOCATION=$(GPT_LOCATION) GLOBUS_FLAVOR=$(GLOBUS_FLAVOR)  CFLAGS="-I$(PREFIX)/include -I$(PREFIX)/jdk/include" CXXFLAGS="-I$(PREFIX)/jdk/include -I$(PREFIX)/jdk/include/linux" CPPFLAGS="-I$(PREFIX)/jdk/include -I$(PREFIX)/jdk/include/linux" LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64" GPT_LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64 -L$(PREFIX)/globus/lib" 

ifneq ($(shell uname),Darwin)
	CONFIGURE_ENV += JAVA_HOME=$(PREFIX)/jdk/ 
	BUILD_ENV += JAVA_HOME=$(PREFIX)/jdk/
	INSTALL_ENV += JAVA_HOME=$(PREFIX)/jdk/
else
	CONFIGURE_ENV += JAVA_HOME=/usr/
	BUILD_ENV += JAVA_HOME=/usr/
	INSTALL_ENV += JAVA_HOME=/usr/
endif


CONFIGURE_ARGS = --prefix=$(GLOBUS_LOCATION) --libdir=$(GLOBUS_LOCATION)/lib --with-flavor=$(GLOBUS_FLAVOR) --with-openssl=$(PREFIX)
BUILD_ARGS =  gsi-myproxy

include ../category.mk

PRE_CONFIGURE = (rm -rf $(GLOBUS_LOCATION))

POST_INSTALL = (cd $(WORKSRC) && ln -sf ../../bin/openssl  $(PREFIX)/globus/bin/openssl && if [ -d "$(PREFIX)/globus/lib64" ]; then cp -fr $(PREFIX)/globus/lib64/* $(PREFIX)/globus/lib/; fi )