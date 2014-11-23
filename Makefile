
latexfile=project

all: pdf

knitr: $(latexfile).Rnw
	Rscript -e "library(knitr); knit('./project.Rnw')"

pdf : knitr $(latexfile).tex
	pdflatex $(latexfile).tex

clean:
	rm *.tmp *.pdf

spell:
	ispell -p ispell.dict $(latexfile).tex
