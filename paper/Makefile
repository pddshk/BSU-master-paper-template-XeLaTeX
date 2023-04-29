XELATEX ?= $(shell which xelatex)
BIBTEX  ?= $(shell which bibtex)
MAIN     = main
OUTDIR   = output
FLAGS    := -shell-escape -output-directory=$(OUTDIR) -interaction=nonstopmode
PREFLAGS := -synctex=0 -no-pdf $(FLAGS)
FLAGS    := -synctex=15 $(FLAGS)


all: prepare clean precompile compile
	mv $(OUTDIR)/$(MAIN).{pdf,log} ./

prepare:
	mkdir -p $(OUTDIR)

precompile: light bib light

light: main.tex
	$(XELATEX) $(PREFLAGS) $<

bib: $(OUTDIR)/$(MAIN).aux
	$(BIBTEX) $<

compile: main.tex
	$(XELATEX) $(FLAGS) $<

clean:
	rm -r $(OUTDIR)/!("ABOUT")