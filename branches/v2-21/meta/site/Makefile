GARNAME = alien-meta-site
GARVERSION = 1
CATEGORIES = meta
DISTFILES  =
FILTER_OUT ?= 
FILTER     ?= % 
 
ALL=\
apps/alien/admin \
apps/alien/alien-ca \
apps/alien/lcg \
apps/monitor/MonaLisa \
apps/perl/Config-ApacheFormat \
apps/perl/Term-ReadLine-Gnu \
apps/portal/mod_perl \
apps/tools/aria2 \
apps/devel/Devel-Trace

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