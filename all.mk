# This makefile is to be included from Makefiles in each category
# directory.

%:
	@for i in $(filter-out CVS category.mk Makefile make.log,$(wildcard *)) ; do \
		$(MAKE) -C $$i $* ; \
	done

status:
	@for i in $(filter-out CVS category.mk Makefile make.log,$(wildcard *)) ; do \
		$(MAKE) -C $$i -s status ; \
	done

listdeps:
	@for i in $(filter-out CVS category.mk Makefile make.log,$(wildcard *)) ; do \
		$(MAKE) -C $$i -s showdeps-l ; \
	done

version:
	@for i in $(filter-out CVS category.mk Makefile make.log,$(wildcard *)) ; do \
		$(MAKE) -C $$i -s version ; \
	done

paranoid-%:
	@for i in $(filter-out CVS category.mk Makefile make.log,$(wildcard *)) ; do \
		$(MAKE) -C $$i $* || exit 2; \
	done

export BUILDLOG ?= $(shell pwd)/buildlog.txt

report-%:
	@for i in $(filter-out CVS category.mk Makefile make.log,$(wildcard *)) ; do \
		$(MAKE) -C $$i $* || echo "	*** make $* in $$i failed ***" >> $(BUILDLOG); \
	done
