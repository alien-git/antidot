all:

DIRS=gcc devel base gui portal server glite lcg alien monitor root


%:
	@for i in $(DIRS); do \
		$(MAKE) -C $$i -s $* ; \
	done

