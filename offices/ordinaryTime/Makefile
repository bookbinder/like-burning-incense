LILYPOND-BOOK=lilypond-book -o out --pdf
LATEX=xelatex
ORGAN-FILES := out/OpeningVerse-Organ.pdf out/A0-Vespers-Organ.pdf out/A1-Lauds-Organ.pdf out/A1-Vespers-Organ.pdf out/A2-Lauds-Organ.pdf out/A2-Vespers-Organ.pdf out/A3-Lauds-Organ.pdf out/A3-Vespers-Organ.pdf out/A4-Lauds-Organ.pdf out/A4-Vespers-Organ.pdf out/A5-Lauds-Organ.pdf out/A5-Vespers-Organ.pdf out/A6-Lauds-Organ.pdf out/A6-Vespers-Organ.pdf out/A7-Lauds-Organ.pdf out/B0-Vespers-Organ.pdf out/B1-Lauds-Organ.pdf out/B1-Vespers-Organ.pdf out/B2-Lauds-Organ.pdf out/B2-Vespers-Organ.pdf out/B3-Lauds-Organ.pdf out/B3-Vespers-Organ.pdf out/B4-Lauds-Organ.pdf out/B4-Vespers-Organ.pdf out/B5-Lauds-Organ.pdf out/B5-Vespers-Organ.pdf out/B6-Lauds-Organ.pdf out/B6-Vespers-Organ.pdf out/B7-Lauds-Organ.pdf out/C0-Vespers-Organ.pdf out/C1-Lauds-Organ.pdf out/C1-Vespers-Organ.pdf out/C2-Lauds-Organ.pdf out/C2-Vespers-Organ.pdf out/C3-Lauds-Organ.pdf out/C3-Vespers-Organ.pdf out/C4-Lauds-Organ.pdf out/C4-Vespers-Organ.pdf out/C5-Lauds-Organ.pdf out/C5-Vespers-Organ.pdf out/C6-Lauds-Organ.pdf out/C6-Vespers-Organ.pdf out/C7-Lauds-Organ.pdf out/D0-Vespers-Organ.pdf out/D1-Lauds-Organ.pdf out/D1-Vespers-Organ.pdf out/D2-Lauds-Organ.pdf out/D2-Vespers-Organ.pdf out/D3-Lauds-Organ.pdf out/D3-Vespers-Organ.pdf out/D4-Lauds-Organ.pdf out/D4-Vespers-Organ.pdf out/D5-Lauds-Organ.pdf out/D5-Vespers-Organ.pdf out/D6-Lauds-Organ.pdf out/D6-Vespers-Organ.pdf out/D7-Lauds-Organ.pdf
CANTOR-FILES := out/OpeningVerse-Cantor.pdf out/A0-Vespers-Cantor.pdf out/A1-Lauds-Cantor.pdf out/A1-Vespers-Cantor.pdf out/A2-Lauds-Cantor.pdf out/A2-Vespers-Cantor.pdf out/A3-Lauds-Cantor.pdf out/A3-Vespers-Cantor.pdf out/A4-Lauds-Cantor.pdf out/A4-Vespers-Cantor.pdf out/A5-Lauds-Cantor.pdf out/A5-Vespers-Cantor.pdf out/A6-Lauds-Cantor.pdf out/A6-Vespers-Cantor.pdf out/A7-Lauds-Cantor.pdf out/B0-Vespers-Cantor.pdf out/B1-Lauds-Cantor.pdf out/B1-Vespers-Cantor.pdf out/B2-Lauds-Cantor.pdf out/B2-Vespers-Cantor.pdf out/B3-Lauds-Cantor.pdf out/B3-Vespers-Cantor.pdf out/B4-Lauds-Cantor.pdf out/B4-Vespers-Cantor.pdf out/B5-Lauds-Cantor.pdf out/B5-Vespers-Cantor.pdf out/B6-Lauds-Cantor.pdf out/B6-Vespers-Cantor.pdf out/B7-Lauds-Cantor.pdf out/C0-Vespers-Cantor.pdf out/C1-Lauds-Cantor.pdf out/C1-Vespers-Cantor.pdf out/C2-Lauds-Cantor.pdf out/C2-Vespers-Cantor.pdf out/C3-Lauds-Cantor.pdf out/C3-Vespers-Cantor.pdf out/C4-Lauds-Cantor.pdf out/C4-Vespers-Cantor.pdf out/C5-Lauds-Cantor.pdf out/C5-Vespers-Cantor.pdf out/C6-Lauds-Cantor.pdf out/C6-Vespers-Cantor.pdf out/C7-Lauds-Cantor.pdf out/D0-Vespers-Cantor.pdf out/D1-Lauds-Cantor.pdf out/D1-Vespers-Cantor.pdf out/D2-Lauds-Cantor.pdf out/D2-Vespers-Cantor.pdf out/D3-Lauds-Cantor.pdf out/D3-Vespers-Cantor.pdf out/D4-Lauds-Cantor.pdf out/D4-Vespers-Cantor.pdf out/D5-Lauds-Cantor.pdf out/D5-Vespers-Cantor.pdf out/D6-Lauds-Cantor.pdf out/D6-Vespers-Cantor.pdf out/D7-Lauds-Cantor.pdf

all: ScoreOrgan.tex ScoreCantor.tex

ScoreOrgan.tex: $(ORGAN-FILES)
	$(LATEX) ScoreOrgan.tex
	cp ScoreOrgan.pdf ../../pdf/ScoreOrganWeeks1-4.pdf
	rm -rf out/*/
	xdg-open ../../pdf/ScoreOrganWeeks1-4.pdf

ScoreCantor.tex: $(CANTOR-FILES)
	$(LATEX) ScoreCantor.tex
	cp ScoreCantor.pdf ../../pdf/ScoreCantorWeeks1-4.pdf
	rm -rf out/*/
	xdg-open ../../pdf/ScoreCantorWeeks1-4.pdf

out/OpeningVerse-Organ.pdf:
	lilypond-book -o out --pdf OpeningVerse-Organ.lytex
	cd out && pdflatex OpeningVerse-Organ.tex

out/OpeningVerse-Cantor.pdf:
	lilypond-book -o out --pdf OpeningVerse-Cantor.lytex
	cd out && pdflatex OpeningVerse-Cantor.tex

out/A0-Vespers-Organ.pdf:
	lilypond-book -o out --pdf A0-Vespers-Organ.lytex
	cd out && pdflatex A0-Vespers-Organ.tex

out/A0-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf A0-Vespers-Cantor.lytex
	cd out && pdflatex A0-Vespers-Cantor.tex

out/A1-Lauds-Organ.pdf:
	lilypond-book -o out --pdf A1-Lauds-Organ.lytex
	cd out && pdflatex A1-Lauds-Organ.tex

out/A1-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf A1-Lauds-Cantor.lytex
	cd out && pdflatex A1-Lauds-Cantor.tex

out/A1-Vespers-Organ.pdf:
	lilypond-book -o out --pdf A1-Vespers-Organ.lytex
	cd out && pdflatex A1-Vespers-Organ.tex

out/A1-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf A1-Vespers-Cantor.lytex
	cd out && pdflatex A1-Vespers-Cantor.tex

out/A2-Lauds-Organ.pdf:
	lilypond-book -o out --pdf A2-Lauds-Organ.lytex
	cd out && pdflatex A2-Lauds-Organ.tex

out/A2-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf A2-Lauds-Cantor.lytex
	cd out && pdflatex A2-Lauds-Cantor.tex

out/A2-Vespers-Organ.pdf:
	lilypond-book -o out --pdf A2-Vespers-Organ.lytex
	cd out && pdflatex A2-Vespers-Organ.tex

out/A2-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf A2-Vespers-Cantor.lytex
	cd out && pdflatex A2-Vespers-Cantor.tex

out/A3-Lauds-Organ.pdf:
	lilypond-book -o out --pdf A3-Lauds-Organ.lytex
	cd out && pdflatex A3-Lauds-Organ.tex

out/A3-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf A3-Lauds-Cantor.lytex
	cd out && pdflatex A3-Lauds-Cantor.tex

out/A3-Vespers-Organ.pdf:
	lilypond-book -o out --pdf A3-Vespers-Organ.lytex
	cd out && pdflatex A3-Vespers-Organ.tex

out/A3-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf A3-Vespers-Cantor.lytex
	cd out && pdflatex A3-Vespers-Cantor.tex

out/A4-Lauds-Organ.pdf:
	lilypond-book -o out --pdf A4-Lauds-Organ.lytex
	cd out && pdflatex A4-Lauds-Organ.tex

out/A4-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf A4-Lauds-Cantor.lytex
	cd out && pdflatex A4-Lauds-Cantor.tex

out/A4-Vespers-Organ.pdf:
	lilypond-book -o out --pdf A4-Vespers-Organ.lytex
	cd out && pdflatex A4-Vespers-Organ.tex

out/A4-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf A4-Vespers-Cantor.lytex
	cd out && pdflatex A4-Vespers-Cantor.tex

out/A5-Lauds-Organ.pdf:
	lilypond-book -o out --pdf A5-Lauds-Organ.lytex
	cd out && pdflatex A5-Lauds-Organ.tex

out/A5-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf A5-Lauds-Cantor.lytex
	cd out && pdflatex A5-Lauds-Cantor.tex

out/A5-Vespers-Organ.pdf:
	lilypond-book -o out --pdf A5-Vespers-Organ.lytex
	cd out && pdflatex A5-Vespers-Organ.tex

out/A5-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf A5-Vespers-Cantor.lytex
	cd out && pdflatex A5-Vespers-Cantor.tex

out/A6-Lauds-Organ.pdf:
	lilypond-book -o out --pdf A6-Lauds-Organ.lytex
	cd out && pdflatex A6-Lauds-Organ.tex

out/A6-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf A6-Lauds-Cantor.lytex
	cd out && pdflatex A6-Lauds-Cantor.tex

out/A6-Vespers-Organ.pdf:
	lilypond-book -o out --pdf A6-Vespers-Organ.lytex
	cd out && pdflatex A6-Vespers-Organ.tex

out/A6-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf A6-Vespers-Cantor.lytex
	cd out && pdflatex A6-Vespers-Cantor.tex

out/A7-Lauds-Organ.pdf:
	lilypond-book -o out --pdf A7-Lauds-Organ.lytex
	cd out && pdflatex A7-Lauds-Organ.tex

out/A7-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf A7-Lauds-Cantor.lytex
	cd out && pdflatex A7-Lauds-Cantor.tex

out/B0-Vespers-Organ.pdf:
	lilypond-book -o out --pdf B0-Vespers-Organ.lytex
	cd out && pdflatex B0-Vespers-Organ.tex

out/B0-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf B0-Vespers-Cantor.lytex
	cd out && pdflatex B0-Vespers-Cantor.tex

out/B1-Lauds-Organ.pdf:
	lilypond-book -o out --pdf B1-Lauds-Organ.lytex
	cd out && pdflatex B1-Lauds-Organ.tex

out/B1-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf B1-Lauds-Cantor.lytex
	cd out && pdflatex B1-Lauds-Cantor.tex

out/B1-Vespers-Organ.pdf:
	lilypond-book -o out --pdf B1-Vespers-Organ.lytex
	cd out && pdflatex B1-Vespers-Organ.tex

out/B1-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf B1-Vespers-Cantor.lytex
	cd out && pdflatex B1-Vespers-Cantor.tex

out/B2-Lauds-Organ.pdf:
	lilypond-book -o out --pdf B2-Lauds-Organ.lytex
	cd out && pdflatex B2-Lauds-Organ.tex

out/B2-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf B2-Lauds-Cantor.lytex
	cd out && pdflatex B2-Lauds-Cantor.tex

out/B2-Vespers-Organ.pdf:
	lilypond-book -o out --pdf B2-Vespers-Organ.lytex
	cd out && pdflatex B2-Vespers-Organ.tex

out/B2-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf B2-Vespers-Cantor.lytex
	cd out && pdflatex B2-Vespers-Cantor.tex

out/B3-Lauds-Organ.pdf:
	lilypond-book -o out --pdf B3-Lauds-Organ.lytex
	cd out && pdflatex B3-Lauds-Organ.tex

out/B3-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf B3-Lauds-Cantor.lytex
	cd out && pdflatex B3-Lauds-Cantor.tex

out/B3-Vespers-Organ.pdf:
	lilypond-book -o out --pdf B3-Vespers-Organ.lytex
	cd out && pdflatex B3-Vespers-Organ.tex

out/B3-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf B3-Vespers-Cantor.lytex
	cd out && pdflatex B3-Vespers-Cantor.tex

out/B4-Lauds-Organ.pdf:
	lilypond-book -o out --pdf B4-Lauds-Organ.lytex
	cd out && pdflatex B4-Lauds-Organ.tex

out/B4-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf B4-Lauds-Cantor.lytex
	cd out && pdflatex B4-Lauds-Cantor.tex

out/B4-Vespers-Organ.pdf:
	lilypond-book -o out --pdf B4-Vespers-Organ.lytex
	cd out && pdflatex B4-Vespers-Organ.tex

out/B4-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf B4-Vespers-Cantor.lytex
	cd out && pdflatex B4-Vespers-Cantor.tex

out/B5-Lauds-Organ.pdf:
	lilypond-book -o out --pdf B5-Lauds-Organ.lytex
	cd out && pdflatex B5-Lauds-Organ.tex

out/B5-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf B5-Lauds-Cantor.lytex
	cd out && pdflatex B5-Lauds-Cantor.tex

out/B5-Vespers-Organ.pdf:
	lilypond-book -o out --pdf B5-Vespers-Organ.lytex
	cd out && pdflatex B5-Vespers-Organ.tex

out/B5-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf B5-Vespers-Cantor.lytex
	cd out && pdflatex B5-Vespers-Cantor.tex

out/B6-Lauds-Organ.pdf:
	lilypond-book -o out --pdf B6-Lauds-Organ.lytex
	cd out && pdflatex B6-Lauds-Organ.tex

out/B6-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf B6-Lauds-Cantor.lytex
	cd out && pdflatex B6-Lauds-Cantor.tex

out/B6-Vespers-Organ.pdf:
	lilypond-book -o out --pdf B6-Vespers-Organ.lytex
	cd out && pdflatex B6-Vespers-Organ.tex

out/B6-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf B6-Vespers-Cantor.lytex
	cd out && pdflatex B6-Vespers-Cantor.tex

out/B7-Lauds-Organ.pdf:
	lilypond-book -o out --pdf B7-Lauds-Organ.lytex
	cd out && pdflatex B7-Lauds-Organ.tex

out/B7-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf B7-Lauds-Cantor.lytex
	cd out && pdflatex B7-Lauds-Cantor.tex

out/C0-Vespers-Organ.pdf:
	lilypond-book -o out --pdf C0-Vespers-Organ.lytex
	cd out && pdflatex C0-Vespers-Organ.tex

out/C0-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf C0-Vespers-Cantor.lytex
	cd out && pdflatex C0-Vespers-Cantor.tex

out/C1-Lauds-Organ.pdf:
	lilypond-book -o out --pdf C1-Lauds-Organ.lytex
	cd out && pdflatex C1-Lauds-Organ.tex

out/C1-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf C1-Lauds-Cantor.lytex
	cd out && pdflatex C1-Lauds-Cantor.tex

out/C1-Vespers-Organ.pdf:
	lilypond-book -o out --pdf C1-Vespers-Organ.lytex
	cd out && pdflatex C1-Vespers-Organ.tex

out/C1-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf C1-Vespers-Cantor.lytex
	cd out && pdflatex C1-Vespers-Cantor.tex

out/C2-Lauds-Organ.pdf:
	lilypond-book -o out --pdf C2-Lauds-Organ.lytex
	cd out && pdflatex C2-Lauds-Organ.tex

out/C2-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf C2-Lauds-Cantor.lytex
	cd out && pdflatex C2-Lauds-Cantor.tex

out/C2-Vespers-Organ.pdf:
	lilypond-book -o out --pdf C2-Vespers-Organ.lytex
	cd out && pdflatex C2-Vespers-Organ.tex

out/C2-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf C2-Vespers-Cantor.lytex
	cd out && pdflatex C2-Vespers-Cantor.tex

out/C3-Lauds-Organ.pdf:
	lilypond-book -o out --pdf C3-Lauds-Organ.lytex
	cd out && pdflatex C3-Lauds-Organ.tex

out/C3-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf C3-Lauds-Cantor.lytex
	cd out && pdflatex C3-Lauds-Cantor.tex

out/C3-Vespers-Organ.pdf:
	lilypond-book -o out --pdf C3-Vespers-Organ.lytex
	cd out && pdflatex C3-Vespers-Organ.tex

out/C3-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf C3-Vespers-Cantor.lytex
	cd out && pdflatex C3-Vespers-Cantor.tex

out/C4-Lauds-Organ.pdf:
	lilypond-book -o out --pdf C4-Lauds-Organ.lytex
	cd out && pdflatex C4-Lauds-Organ.tex

out/C4-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf C4-Lauds-Cantor.lytex
	cd out && pdflatex C4-Lauds-Cantor.tex

out/C4-Vespers-Organ.pdf:
	lilypond-book -o out --pdf C4-Vespers-Organ.lytex
	cd out && pdflatex C4-Vespers-Organ.tex

out/C4-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf C4-Vespers-Cantor.lytex
	cd out && pdflatex C4-Vespers-Cantor.tex

out/C5-Lauds-Organ.pdf:
	lilypond-book -o out --pdf C5-Lauds-Organ.lytex
	cd out && pdflatex C5-Lauds-Organ.tex

out/C5-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf C5-Lauds-Cantor.lytex
	cd out && pdflatex C5-Lauds-Cantor.tex

out/C5-Vespers-Organ.pdf:
	lilypond-book -o out --pdf C5-Vespers-Organ.lytex
	cd out && pdflatex C5-Vespers-Organ.tex

out/C5-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf C5-Vespers-Cantor.lytex
	cd out && pdflatex C5-Vespers-Cantor.tex

out/C6-Lauds-Organ.pdf:
	lilypond-book -o out --pdf C6-Lauds-Organ.lytex
	cd out && pdflatex C6-Lauds-Organ.tex

out/C6-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf C6-Lauds-Cantor.lytex
	cd out && pdflatex C6-Lauds-Cantor.tex

out/C6-Vespers-Organ.pdf:
	lilypond-book -o out --pdf C6-Vespers-Organ.lytex
	cd out && pdflatex C6-Vespers-Organ.tex

out/C6-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf C6-Vespers-Cantor.lytex
	cd out && pdflatex C6-Vespers-Cantor.tex

out/C7-Lauds-Organ.pdf:
	lilypond-book -o out --pdf C7-Lauds-Organ.lytex
	cd out && pdflatex C7-Lauds-Organ.tex

out/C7-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf C7-Lauds-Cantor.lytex
	cd out && pdflatex C7-Lauds-Cantor.tex

out/D0-Vespers-Organ.pdf:
	lilypond-book -o out --pdf D0-Vespers-Organ.lytex
	cd out && pdflatex D0-Vespers-Organ.tex

out/D0-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf D0-Vespers-Cantor.lytex
	cd out && pdflatex D0-Vespers-Cantor.tex

out/D1-Lauds-Organ.pdf:
	lilypond-book -o out --pdf D1-Lauds-Organ.lytex
	cd out && pdflatex D1-Lauds-Organ.tex

out/D1-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf D1-Lauds-Cantor.lytex
	cd out && pdflatex D1-Lauds-Cantor.tex

out/D1-Vespers-Organ.pdf:
	lilypond-book -o out --pdf D1-Vespers-Organ.lytex
	cd out && pdflatex D1-Vespers-Organ.tex

out/D1-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf D1-Vespers-Cantor.lytex
	cd out && pdflatex D1-Vespers-Cantor.tex

out/D2-Lauds-Organ.pdf:
	lilypond-book -o out --pdf D2-Lauds-Organ.lytex
	cd out && pdflatex D2-Lauds-Organ.tex

out/D2-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf D2-Lauds-Cantor.lytex
	cd out && pdflatex D2-Lauds-Cantor.tex

out/D2-Vespers-Organ.pdf:
	lilypond-book -o out --pdf D2-Vespers-Organ.lytex
	cd out && pdflatex D2-Vespers-Organ.tex

out/D2-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf D2-Vespers-Cantor.lytex
	cd out && pdflatex D2-Vespers-Cantor.tex

out/D3-Lauds-Organ.pdf:
	lilypond-book -o out --pdf D3-Lauds-Organ.lytex
	cd out && pdflatex D3-Lauds-Organ.tex

out/D3-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf D3-Lauds-Cantor.lytex
	cd out && pdflatex D3-Lauds-Cantor.tex

out/D3-Vespers-Organ.pdf:
	lilypond-book -o out --pdf D3-Vespers-Organ.lytex
	cd out && pdflatex D3-Vespers-Organ.tex

out/D3-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf D3-Vespers-Cantor.lytex
	cd out && pdflatex D3-Vespers-Cantor.tex

out/D4-Lauds-Organ.pdf:
	lilypond-book -o out --pdf D4-Lauds-Organ.lytex
	cd out && pdflatex D4-Lauds-Organ.tex

out/D4-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf D4-Lauds-Cantor.lytex
	cd out && pdflatex D4-Lauds-Cantor.tex

out/D4-Vespers-Organ.pdf:
	lilypond-book -o out --pdf D4-Vespers-Organ.lytex
	cd out && pdflatex D4-Vespers-Organ.tex

out/D4-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf D4-Vespers-Cantor.lytex
	cd out && pdflatex D4-Vespers-Cantor.tex

out/D5-Lauds-Organ.pdf:
	lilypond-book -o out --pdf D5-Lauds-Organ.lytex
	cd out && pdflatex D5-Lauds-Organ.tex

out/D5-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf D5-Lauds-Cantor.lytex
	cd out && pdflatex D5-Lauds-Cantor.tex

out/D5-Vespers-Organ.pdf:
	lilypond-book -o out --pdf D5-Vespers-Organ.lytex
	cd out && pdflatex D5-Vespers-Organ.tex

out/D5-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf D5-Vespers-Cantor.lytex
	cd out && pdflatex D5-Vespers-Cantor.tex

out/D6-Lauds-Organ.pdf:
	lilypond-book -o out --pdf D6-Lauds-Organ.lytex
	cd out && pdflatex D6-Lauds-Organ.tex

out/D6-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf D6-Lauds-Cantor.lytex
	cd out && pdflatex D6-Lauds-Cantor.tex

out/D6-Vespers-Organ.pdf:
	lilypond-book -o out --pdf D6-Vespers-Organ.lytex
	cd out && pdflatex D6-Vespers-Organ.tex

out/D6-Vespers-Cantor.pdf:
	lilypond-book -o out --pdf D6-Vespers-Cantor.lytex
	cd out && pdflatex D6-Vespers-Cantor.tex

out/D7-Lauds-Organ.pdf:
	lilypond-book -o out --pdf D7-Lauds-Organ.lytex
	cd out && pdflatex D7-Lauds-Organ.tex

out/D7-Lauds-Cantor.pdf:
	lilypond-book -o out --pdf D7-Lauds-Cantor.lytex
	cd out && pdflatex D7-Lauds-Cantor.tex
