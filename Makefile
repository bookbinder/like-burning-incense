SHELL=/bin/bash
LILYPOND-BOOK=lilypond-book -o out --pdf
LATEX=xelatex


all: ow3

ow1: 
	cd week1 && $(LILYPOND-BOOK) OrganScore_Week1.lytex
	cd week1/out && $(LATEX) OrganScore_Week1.tex
	cp week1/out/OrganScore_Week1.pdf week1/pdf

ow2: 
	cd week2 && $(LILYPOND-BOOK) OrganScore_Week2.lytex
	cd week2/out && $(LATEX) OrganScore_Week2.tex
	cp week2/out/OrganScore_Week2.pdf week2/pdf

ow3: 
	cd week3 && $(LILYPOND-BOOK) OrganScore_Week3.lytex
	cd week3/out && $(LATEX) OrganScore_Week3.tex
	cp week3/out/OrganScore_Week3.pdf week3/pdf

ow4:
	cd week4 && $(LILYPOND-BOOK) OrganScore_Week4.lytex
	cd week4/out && $(LATEX) OrganScore_Week4.tex
	cp week4/out/OrganScore_Week4.pdf week4/pdf

cw1:
	cd week1 && $(LILYPOND-BOOK) CantorScore_Week1.lytex
	cd week1/out && $(LATEX) CantorScore_Week1.tex
	cp week1/out/CantorScore_Week1.pdf week1/pdf
cw2:
	cd week2 && $(LILYPOND-BOOK) CantorScore_Week2.lytex
	cd week2/out && $(LATEX) CantorScore_Week2.tex
	cp week2/out/CantorScore_Week2.pdf week2/pdf
cw3:
	cd week3 && $(LILYPOND-BOOK) CantorScore_Week3.lytex
	cd week3/out && $(LATEX) CantorScore_Week3.tex
	cp week3/out/CantorScore_Week3.pdf week3/pdf
cw4:
	cd week4 && $(LILYPOND-BOOK) CantorScore_Week4.lytex
	cd week4/out && $(LATEX) CantorScore_Week4.tex
	cp week4/out/CantorScore_Week4.pdf week4/pdf
