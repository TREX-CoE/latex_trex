WP=2
NUMBER=1
TITLE=main

NAME=D$(WP).$(NUMBER)-$(TITLE)
TEX=$(NAME).tex
PDF=$(NAME).pdf

default:
	pdflatex $(TEX)
	pdflatex $(TEX)
	bibtex $(TEX)
	pdflatex $(TEX)

create:
	@if [[ -f $(TEX).tex ]] ; then \
	echo  "File $(TEX).tex already exists) ; exit -1 ; \
        else ; mv main.tex $(TEX).tex ; fi


