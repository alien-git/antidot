
all:

clean:
	rm -rf config.log install-sh config.status  configure *~ missing config.cache  mkinstalldirs alien.conf.mk 

dist:
	tar zcvf ../alien-aibi-0.1.tar.gz `find . -type f` 

status:
	(cd apps; make -s status) 

ustatus:
	(cd apps; make -s ustatus) 

listdeps:
	(cd apps; make -s listdeps) 

distclean:
	make clean
	(cd apps; make clean) 

%:
	(cd meta; make $@)

