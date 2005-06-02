all:

DIRS=gcc devel base gui portal server glite alien monitor


%:
	@for i in $(DIRS); do \
		$(MAKE) -C $$i -s $* ; \
	done

