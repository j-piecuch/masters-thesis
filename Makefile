all: thesis.pdf

.PHONY: clean distclean

thesis.pdf: thesis.tex
	pdflatex -shell-escape $^

clean:
	rm -rf thesis.{aux,log,out,toc,fdb_latexmk,fls} _minted-thesis

distclean: clean
	rm -f thesis.pdf
