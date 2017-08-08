#!/bin/bash

target_file="grp-report"
if [[ "$1" != "clean" ]];
then
	target_file = $1
fi

clean() {
	rm -f "$target_file"{,-legacy}.{aux,log,bbl,bcf,blg,run.xml,toc,tct,out,synctex.gz}
	rm -f *.log
}

if [[ "$1" == "clean" ]];
then
	clean
else
	pdflatex "$target_file"
	bibtex "$target_file".aux
	pdflatex "$target_file"
	pdflatex "$target_file"
	clean
fi

