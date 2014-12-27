ARTICLES = \
  2014-12-27-faith-driven-science

MD = $(addsuffix .md, $(ARTICLES))
HTMLDIR = ../html
HTML = $(addprefix $(HTMLDIR)/, $(addsuffix .html, $(ARTICLES)))

.PHONY: default all html css clean
default: all
all:
	mkdir -p ../html
	cp ../css/blog.css $(HTMLDIR)
	$(MAKE) html

html: $(HTML)

$(HTMLDIR)/%.html: %.md
	pandoc $< -o $@ -t html5 -s --toc -c blog.css

clean:
	rm -f *~
	rm -rf $(HTMLDIR)
