#!/bin/bash

for DIR in $(find . -not -path '*/\.*' -type d)
do
	rm -fv $DIR/*.{aux,log,out,toc,bbl,blg,synctex.gz} 2> /dev/null
done

find . -name '.DS_Store' -exec rm -v {} 2> /dev/null \;
rm -fv thesis.pdf 2> /dev/null
