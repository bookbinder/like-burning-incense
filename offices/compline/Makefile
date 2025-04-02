LILYPOND-BOOK=lilypond-book -o out --pdf
LATEX=xelatex

all:
	# rm -rf out/*/
	$(LILYPOND-BOOK) compline-Organ.lytex
	cd out && $(LATEX) compline-Organ.tex
	evince out/compline-Organ.pdf
