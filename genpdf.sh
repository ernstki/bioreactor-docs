#!/bin/bash

# The output of this tends to look uglier.
#pandoc --toc -H manual.sty -r markdown_github -o \
#       manual.pdf manual.md

#pandoc --toc -H manual.sty -r markdown+pipe_tables -o \
#       manual.pdf manual.md

# Solve problem of figures appearing before text due to default "float"
# behavior of 'figure' environment.

# Solution from: http://tex.stackexchange.com/a/142403
#
# Context: http://tex.stackexchange.com/questions/101725/
#                 latex-figures-appear-before-text-in-pandoc-markdown
pandoc --toc -H manual.sty -r markdown+pipe_tables -w latex -o \
       manual.tex MANUAL.md
sed  -i '' 's/begin{figure}\[htbp\]/begin{figure}\[H\]/g' manual.tex 

# 'pdflatex' doesn't create the table of contents like Pandoc does.
pdflatex manual.tex

# But Pandoc seems to clobber the changes made by sed, above 
# 
# pandoc --toc -H manual.sty -r latex -o manual.pdf \
#	   manual.tex

# Clean up pdflatex's heap of refuse
if which latexmk >/dev/null 2>&1; then
   latexmk -c  && rm -f manual.tex
else
    rm -f manual.aux manual.log manual.out \
          manual.tex manual.toc
fi
