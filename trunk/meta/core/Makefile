GARNAME = alien-core
GARVERSION = 1
CATEGORIES = meta
DISTFILES  =
FILTER_OUT ?= 
FILTER     ?= % 
 
ALL=\
apps/devel/dialog \
apps/base/eugridpma-carep \
apps/glite/glite \
apps/alien/classad \
apps/alien/srm \
apps/alien/common \
apps/alien/gssapi \
apps/alien/perl \
apps/alien/gapi \
apps/server/mysql \
apps/server/DBD-mysql \
apps/server/ejabberd \
apps/server/openldap \
apps/base/Authen-PAM \
apps/monitor/monit \
apps/monitor/MonaLisa 

LIBDEPS=$(strip $(filter $(FILTER),$(filter-out $(FILTER_OUT),$(ALL))))

DESCRIPTION = AliEn - core services

include ../category.mk

apps/install-%/Makefile:
	@mkdir -p $(COOKIEDIR)/install-$*
	@$(MAKECOOKIE)

list_packages:
	@echo $(LIBDEPS)