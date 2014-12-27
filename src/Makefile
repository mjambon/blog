ARTICLES = \
  index \
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

$(HTMLDIR)/%.html: %.md Makefile
	if [ $< = "index.md" ]; then \
          footer=""; \
        else \
          footer="-A footer.html"; \
        fi; \
        pandoc $< -o $@ -t html5 -s -c blog.css $$footer

clean:
	rm -f *~
	rm -rf $(HTMLDIR)
