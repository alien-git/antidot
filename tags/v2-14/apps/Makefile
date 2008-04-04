all:

DIRS=gcc devel base portal server alien monitor

%:
	@for i in $(DIRS); do \
		$(MAKE) -C $$i -s $* ; \
	done

