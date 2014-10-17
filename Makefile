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
clean: FORCE
	rm -f *.pdf *.aux *.log *.bbl *.blg *.dvi *.toc *.lof *.lot *.out *.brf *.bak *~

.PHONY: dist-clean
dist-clean: clean
	@cd images; make dist-clean

.PHONY: FORCE
FORCE:

