.PHONY: default clean

DOCROOT = docs

default:
	mkdir -p $(DOCROOT)
	cp css/*.css $(DOCROOT)
	$(MAKE) -C src

clean:
	$(MAKE) -C src clean
	rm -f *~
