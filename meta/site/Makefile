GARNAME = alien-meta-site
GARVERSION = 1
CATEGORIES = meta
DISTFILES  =
FILTER_OUT ?= 
FILTER     ?= % 
 
ALL=\
apps/alien/admin \
apps/portal/mod_perl \
apps/perl/Config-ApacheFormat \
apps/perl/Term-ReadLine-Gnu \
apps/tools/eugridpma-carep \
apps/alien/alien-ca \
apps/alien/classad \
apps/alien/common \
apps/alien/perl \
apps/alien/gapi

LIBDEPS=$(strip $(filter $(FILTER),$(filter-out $(FILTER_OUT),$(ALL))))

DESCRIPTION = AliEn - Site services

include ../category.mk

apps/install-%/Makefile:
	@mkdir -p $(COOKIEDIR)/install-$*
	@$(MAKECOOKIE)

list_packages:
	@echo $(LIBDEPS)

list_filtered:
	@echo $(FILTER_OUT)