# Makefile used to build manually the pdf version of the article,
# from the LaTeX source. The LaTeX source was originally translated
# by pandoc, then tweaked and maintained separately for publication
# as a pdf.

.PHONY: default pdf clean

default: pdf

OUTDIR = pdf

pdf: $(OUTDIR)/index.pdf

$(OUTDIR)/index.pdf: index.tex
	mkdir -p $(OUTDIR)
	pdflatex -output-directory $(OUTDIR) $<
	pdflatex -output-directory $(OUTDIR) $<

clean:
	rm -f *~
	rm -f $(OUTDIR)/*
	rmdir $(OUTDIR)
