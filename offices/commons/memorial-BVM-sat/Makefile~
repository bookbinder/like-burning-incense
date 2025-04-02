LILYPOND-BOOK=lilypond-book -o out --pdf
LATEX=xelatex

BVM-Sat:
	rm -rf out/*/
	rm out/*.*
	$(LILYPOND-BOOK) BVM-Sat-Organ.lytex
	cd out && $(LATEX) BVM-Sat-Organ.tex
	$(LILYPOND-BOOK) BVM-Sat-Cantor.lytex
	cd out && $(LATEX) BVM-Sat-Cantor.tex
	evince out/BVM-Sat-Organ.pdf
	evince out/BVM-Sat-Cantor.pdf
