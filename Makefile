all: thesis.pdf

.PHONY: clean distclean

thesis.pdf: thesis.tex
	pdflatex -shell-escape $^

clean:
	rm -rf thesis.{aux,log,out,toc,fdb_latexmk,fls,blg,bbl,pyg} _minted-thesis *.log _region_.*

distclean: clean
	rm -f thesis.pdf
