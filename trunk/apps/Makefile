all:

#include ../all.mk
%:
	@for i in devel base gui portal server glite alien; do \
		$(MAKE) -C $$i $* ; \
	done

