LILYPOND-BOOK=lilypond-book -o out --pdf
LATEX=xelatex
LUALATEX=lualatex --shell-escape

all:
	rm -rf out/*/
	$(LILYPOND-BOOK) Benedictus-Cantor.lytex
	cd out && $(LUALATEX) Benedictus-Cantor.tex
	evince out/Benedictus-Cantor.pdf
	# pdflatex ChristmasCanticlesBooklet.tex
	# evince ChristmasCanticlesBooklet.pdf
	# $(LILYPOND-BOOK) Magnificat-Latin-Organ.lytex
	# cd out && $(LATEX) Magnificat-Latin-Organ.tex
	# evince out/Magnificat-Latin-Organ.pdf
	# $(LILYPOND-BOOK) Magnificat-Cantor.lytex
	# cd out && $(LUALATEX) Magnificat-Cantor.tex
	# evince out/Magnificat-Cantor.pdf

