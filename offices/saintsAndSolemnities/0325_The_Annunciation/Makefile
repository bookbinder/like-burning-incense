LILYPOND-BOOK=lilypond-book -o out --pdf
LATEX=xelatex

cantor:
	# $(LILYPOND-BOOK) 1-Lauds-Organ.lytex
	# cd out && $(LATEX) 1-Lauds-Organ.tex
	# cd out && evince 1-Lauds-Organ.pdf
	$(LILYPOND-BOOK) 1-Lauds-Cantor.lytex
	cd out && $(LATEX) 1-Lauds-Cantor.tex
	cd out && evince 1-Lauds-Cantor.pdf
