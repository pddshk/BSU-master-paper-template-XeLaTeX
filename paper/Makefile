XELATEX ?= $(shell which xelatex)
BIBTEX  ?= $(shell which bibtex)
MAIN     = main
OUTDIR   = output
FLAGS    = -shell-escape -output-directory=$(OUTDIR)
PREFLAGS = -synctex=0 -no-pdf $(FLAGS)
FLAGS    += -synctex=15


all: prepare precompile compile
	cp $(OUTDIR)/$(MAIN).{pdf,log} ./


prepare:
	mkdir -p $(OUTDIR)

precompile: light bib light

light: main.tex
	$(XELATEX) $(PREFLAGS) $<

bib: $(OUTDIR)/$(MAIN).aux
	$(BIBTEX) $<

compile: main.tex
	$(XELATEX) $(FLAGS) $<