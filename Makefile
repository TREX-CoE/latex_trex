TITLE=Report-on-a-first-alpha-release-of-the-IO-library
NUMBER=1
WP=2

NAME=D$(WP).$(NUMBER)-$(TITLE)
TEX=$(NAME).tex
PDF=$(NAME).pdf

default:
	pdflatex $(TEX)
	pdflatex $(TEX)

touch:
	touch $(TEX)

