SHELL := /bin/bash

all : tables graphs
	latexmk -pdf -pdflatex='pdflatex -interaction=nonstopmode %O %S' \
	   fata-gauss-code-enum 

TABLES =

GRAPHS =
    
tables : $(TABLES)

graphs : $(GRAPHS)

gen-graph-%.tex : graph-%.gnuplot
	gnuplot $<

clean:
	$(RM) *.fdb_latexmk *.log *.out *.snm *.toc *.aux *.fls *.nav fata-gauss-code-enum.pdf

