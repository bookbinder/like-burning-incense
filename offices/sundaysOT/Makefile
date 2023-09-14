LILYPOND-BOOK=lilypond-book -o out --pdf
LATEX=xelatex
ORGAN-FILES := out/OpeningVerse-Organ.pdf out/2Sun-Organ.pdf
CANTOR-FILES := out/OpeningVerse-Cantor.pdf out/2Sun-Cantor.pdf

all: ScoreOrgan.tex ScoreCantor.tex

ScoreOrgan.tex: $(ORGAN-FILES)
	$(LATEX) ScoreOrgan.tex
	cp ScoreOrgan.pdf ../../pdf/ScoreOrganSunOT.pdf
	rm -rf out/*/
	xdg-open ../../pdf/ScoreOrganSunOT.pdf

ScoreCantor.tex: $(CANTOR-FILES)
	$(LATEX) ScoreCantor.tex
	cp ScoreCantor.pdf ../../pdf/ScoreCantorSunOT.pdf
	rm -rf out/*/
	xdg-open ../../pdf/ScoreCantorSunOT.pdf

out/OpeningVerse-Organ.pdf:
	$(LILYPOND-BOOK) OpeningVerse-Organ.lytex
	cd out && $(LATEX) OpeningVerse-Organ.tex

out/OpeningVerse-Cantor.pdf:
	$(LILYPOND-BOOK) OpeningVerse-Cantor.lytex
	cd out && $(LATEX) OpeningVerse-Cantor.tex

out/2Sun-Organ.pdf:
	$(LILYPOND-BOOK) 2Sun-Organ.lytex
	cd out && $(LATEX) 2Sun-Organ.tex

out/2Sun-Cantor.pdf:
	$(LILYPOND-BOOK) 2Sun-Cantor.lytex
	cd out && $(LATEX) 2Sun-Cantor.tex
