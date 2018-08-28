
.PHONY: force-build

all: coverpage.pdf thesis.pdf thesis-merged.pdf

force-build:

coverpage.pdf: force-build
	xelatex coverpage

thesis.pdf: force-build
	xelatex thesis
	bibtex thesis
	xelatex thesis
	xelatex thesis

thesis-merged.pdf: force-build
	gs -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=thesis-merged.pdf -dBATCH coverpage.pdf thesis.pdf
	./cleanup.sh
