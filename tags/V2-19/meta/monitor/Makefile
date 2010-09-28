GARNAME = alien-meta-monitor
GARVERSION = 1
CATEGORIES = meta
DISTFILES  =
FILTER_OUT ?= apps/devel/jdk apps/devel/ant
FILTER     ?= % 
 
ALL=\
apps/alien/admin \
apps/alien/common \
apps/monitor/MonaLisa \
apps/perl/POE

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