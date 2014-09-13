#!/bin/bash

set -x

# clean
# rm *.aux *.log *.glo *.gls *.idx *.ilg *.ind *.lof *.toc *.out

rm mini-dev.pdf 
xelatex -interaction=nonstopmode mini-dev.tex 
# uh, ya, for ToC or set up real system...
xelatex -interaction=nonstopmode mini-dev.tex 
rm mini-dev-thumbnail.pdf
xelatex -interaction=nonstopmode mini-dev-thumbnail.tex
#evince mini-dev-thumbnail.pdf mini-dev.pdf &

evince mini-dev.pdf &

echo

exit 0

