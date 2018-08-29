
.PHONY: force-build

all: coverpage.pdf thesis_to_be_merged.pdf thesis.pdf

force-build:

coverpage.pdf: force-build
	xelatex coverpage

thesis_to_be_merged.pdf: force-build
	xelatex thesis_to_be_merged
	bibtex thesis_to_be_merged
	xelatex thesis_to_be_merged
	xelatex thesis_to_be_merged

thesis.pdf: force-build
	gs -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=thesis.pdf -dBATCH coverpage.pdf thesis_to_be_merged.pdf
	./cleanup.sh
