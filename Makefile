MAIN= thesis-example
LATEX= pdflatex
BIBTEX= bibtex

.PHONY: all
all: bib
	@$(LATEX) $(MAIN).tex
	@$(LATEX) $(MAIN).tex

.PHONY: bib
bib:
	@$(LATEX) $(MAIN).tex
	@$(BIBTEX) $(MAIN)

.PHONY: clean
clean:
	rm -f *.pdf *.aux *.log *.bbl *~ *.blg *.dvi *.toc *.out

