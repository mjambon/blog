ARTICLES = \
  2014-12-27-faith-driven-science \
  2014-12-31-intelligence-precedes-machines \
  2015-01-03-universal-career-advice \
  2015-11-08-deep-vs-fast-thinking \
  2016-07-23-moving-percentile \
  2016-07-24-definitions-of-life

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
	pandoc $< -o $@ -t html5 -s --mathjax \
    -c ../blog.css -A footer.html -H head.html

clean:
	rm -f *~ */*~ */img/*~
	rm -rf $(HTMLDIR)
