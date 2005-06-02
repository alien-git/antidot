all:

DIRS=gcc devel base gui portal server glite alien monitor root


%:
	@for i in $(DIRS); do \
		$(MAKE) -C $$i -s $* ; \
	done

