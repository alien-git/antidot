
all:

clean:
	rm -rf config.log install-sh config.status  *~ missing config.cache  mkinstalldirs alien.conf.mk 

dist:
	tar zcvf ../alien.tar.gz `find . -type f` 

status:
	(cd apps; $(MAKE) -s status) 

ustatus:
	(cd apps; $(MAKE) -s ustatus) 

listdeps:
	(cd apps; $(MAKE) -s listdeps) 

distclean:
	(cd apps;$(MAKE) clean) 
	$(MAKE) clean

%:
	(cd apps; $(MAKE) $@ || exit 1)

