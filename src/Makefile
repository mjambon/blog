ARTICLES = \
  2014-12-27-faith-driven-science \
  2014-12-31-intelligence-precedes-machines

HTMLDIR = ../html
HTML = \
  $(HTMLDIR)/index.html \
  $(addprefix $(HTMLDIR)/, $(addsuffix /index.html, $(ARTICLES)))

.PHONY: default all html css clean
default: all
all:
	mkdir -p ../html
	cp ../css/blog.css $(HTMLDIR)
	$(MAKE) html

html: $(HTML)

$(HTMLDIR)/index.html: index.md Makefile head.html
	pandoc $< -o $@ -t html5 -s -c blog.css -H head.html

$(HTMLDIR)/%/index.html: %/index.md Makefile head.html footer.html
	mkdir -p $(dir $@)
	if [ -d $(dir $<)/img ]; then cp -a $(dir $<)/img $(dir $@)/; fi
	pandoc $< -o $@ -t html5 -s -c ../blog.css -A footer.html -H head.html

clean:
	rm -f *~ */*~ */img/*~
	rm -rf $(HTMLDIR)
