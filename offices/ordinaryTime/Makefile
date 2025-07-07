LILYPOND-BOOK=lilypond-book -o out --pdf
LATEX=xelatex
LUATEX=lualatex -shell-escape
# ORGAN-FILES := out/OpeningVerse-Organ.pdf out/A0-Vespers-Organ.pdf out/A1-Lauds-Organ.pdf out/A1-Vespers-Organ.pdf out/A2-Lauds-Organ.pdf out/A2-Vespers-Organ.pdf out/A3-Lauds-Organ.pdf out/A3-Vespers-Organ.pdf out/A4-Lauds-Organ.pdf out/A4-Vespers-Organ.pdf out/A5-Lauds-Organ.pdf out/A5-Vespers-Organ.pdf out/A6-Lauds-Organ.pdf out/A6-Vespers-Organ.pdf out/A7-Lauds-Organ.pdf out/B0-Vespers-Organ.pdf out/B1-Lauds-Organ.pdf out/B1-Vespers-Organ.pdf out/B2-Lauds-Organ.pdf out/B2-Vespers-Organ.pdf out/B3-Lauds-Organ.pdf out/B3-Vespers-Organ.pdf out/B4-Lauds-Organ.pdf out/B4-Vespers-Organ.pdf out/B5-Lauds-Organ.pdf out/B5-Vespers-Organ.pdf out/B6-Lauds-Organ.pdf out/B6-Vespers-Organ.pdf out/B7-Lauds-Organ.pdf out/C0-Vespers-Organ.pdf out/C1-Lauds-Organ.pdf out/C1-Vespers-Organ.pdf out/C2-Lauds-Organ.pdf out/C2-Vespers-Organ.pdf out/C3-Lauds-Organ.pdf out/C3-Vespers-Organ.pdf out/C4-Lauds-Organ.pdf out/C4-Vespers-Organ.pdf out/C5-Lauds-Organ.pdf out/C5-Vespers-Organ.pdf out/C6-Lauds-Organ.pdf out/C6-Vespers-Organ.pdf out/C7-Lauds-Organ.pdf out/D0-Vespers-Organ.pdf out/D1-Lauds-Organ.pdf out/D1-Vespers-Organ.pdf out/D2-Lauds-Organ.pdf out/D2-Vespers-Organ.pdf out/D3-Lauds-Organ.pdf out/D3-Vespers-Organ.pdf out/D4-Lauds-Organ.pdf out/D4-Vespers-Organ.pdf out/D5-Lauds-Organ.pdf out/D5-Vespers-Organ.pdf out/D6-Lauds-Organ.pdf out/D6-Vespers-Organ.pdf out/D7-Lauds-Organ.pdf
# CANTOR-FILES := out/OpeningVerse-Cantor.pdf out/A0-Vespers-Cantor.pdf out/A1-Lauds-Cantor.pdf out/A1-Vespers-Cantor.pdf out/A2-Lauds-Cantor.pdf out/A2-Vespers-Cantor.pdf out/A3-Lauds-Cantor.pdf out/A3-Vespers-Cantor.pdf out/A4-Lauds-Cantor.pdf out/A4-Vespers-Cantor.pdf out/A5-Lauds-Cantor.pdf out/A5-Vespers-Cantor.pdf out/A6-Lauds-Cantor.pdf out/A6-Vespers-Cantor.pdf out/A7-Lauds-Cantor.pdf out/B0-Vespers-Cantor.pdf out/B1-Lauds-Cantor.pdf out/B1-Vespers-Cantor.pdf out/B2-Lauds-Cantor.pdf out/B2-Vespers-Cantor.pdf out/B3-Lauds-Cantor.pdf out/B3-Vespers-Cantor.pdf out/B4-Lauds-Cantor.pdf out/B4-Vespers-Cantor.pdf out/B5-Lauds-Cantor.pdf out/B5-Vespers-Cantor.pdf out/B6-Lauds-Cantor.pdf out/B6-Vespers-Cantor.pdf out/B7-Lauds-Cantor.pdf out/C0-Vespers-Cantor.pdf out/C1-Lauds-Cantor.pdf out/C1-Vespers-Cantor.pdf out/C2-Lauds-Cantor.pdf out/C2-Vespers-Cantor.pdf out/C3-Lauds-Cantor.pdf out/C3-Vespers-Cantor.pdf out/C4-Lauds-Cantor.pdf out/C4-Vespers-Cantor.pdf out/C5-Lauds-Cantor.pdf out/C5-Vespers-Cantor.pdf out/C6-Lauds-Cantor.pdf out/C6-Vespers-Cantor.pdf out/C7-Lauds-Cantor.pdf out/D0-Vespers-Cantor.pdf out/D1-Lauds-Cantor.pdf out/D1-Vespers-Cantor.pdf out/D2-Lauds-Cantor.pdf out/D2-Vespers-Cantor.pdf out/D3-Lauds-Cantor.pdf out/D3-Vespers-Cantor.pdf out/D4-Lauds-Cantor.pdf out/D4-Vespers-Cantor.pdf out/D5-Lauds-Cantor.pdf out/D5-Vespers-Cantor.pdf out/D6-Lauds-Cantor.pdf out/D6-Vespers-Cantor.pdf out/D7-Lauds-Cantor.pdf

cur:
	# rm -rf out/*/
	# rm -rf tmp-ly/*.*
	# time $(LUATEX) ScoreCantorLong.tex
	# evince ScoreCantorLong.pdf
	time $(LUATEX) ScoreOrganLong.tex
	evince ScoreOrganLong.pdf
	# $(LUATEX) ScoreCantorSingle.tex
	# evince ScoreCantorSingle.pdf

# newver:
# 	rm -rf out/*/
# 	$(LILYPOND-BOOK) ScoreCantorLong.lytex
# 	cd out && $(LATEX) ScoreCantorLong.tex
# 	cd out && evince ScoreCantorLong.pdf

# temp:
# 	rm -rf out/*/
# 	$(LILYPOND-BOOK) ScoreCantorCombined.lytex
# 	cd out && $(LATEX) ScoreCantorCombined.tex
# 	cd out && evince ScoreCantorCombined.pdf

# # all: ScoreOrgan.tex ScoreCantor.tex
# all: ScoreCantor.tex

# ScoreOrgan.tex: $(ORGAN-FILES)
# 	$(LATEX) ScoreOrgan.tex
# 	cp ScoreOrgan.pdf ../../pdf/ScoreOrganWeeks1-4.pdf
# 	rm -rf out/*/
# 	xdg-open ../../pdf/ScoreOrganWeeks1-4.pdf

# ScoreCantor.tex: $(CANTOR-FILES)
# 	$(LATEX) ScoreCantor.tex
# 	cp ScoreCantor.pdf ../../pdf/ScoreCantorWeeks1-4.pdf
# 	rm -rf out/*/
# 	xdg-open ../../pdf/ScoreCantorWeeks1-4.pdf

# out/OpeningVerse-Organ.pdf:
# 	$(LILYPOND-BOOK) OpeningVerse-Organ.lytex
# 	cd out && $(LATEX) OpeningVerse-Organ.tex

# out/OpeningVerse-Cantor.pdf:
# 	$(LILYPOND-BOOK) OpeningVerse-Cantor.lytex
# 	cd out && $(LATEX) OpeningVerse-Cantor.tex

# out/A0-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) A0-Vespers-Organ.lytex
# 	cd out && $(LATEX) A0-Vespers-Organ.tex

# out/A0-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) A0-Vespers-Cantor.lytex
# 	cd out && $(LATEX) A0-Vespers-Cantor.tex

# out/A1-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) A1-Lauds-Organ.lytex
# 	cd out && $(LATEX) A1-Lauds-Organ.tex

# out/A1-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) A1-Lauds-Cantor.lytex
# 	cd out && $(LATEX) A1-Lauds-Cantor.tex

# out/A1-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) A1-Vespers-Organ.lytex
# 	cd out && $(LATEX) A1-Vespers-Organ.tex

# out/A1-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) A1-Vespers-Cantor.lytex
# 	cd out && $(LATEX) A1-Vespers-Cantor.tex

# out/A2-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) A2-Lauds-Organ.lytex
# 	cd out && $(LATEX) A2-Lauds-Organ.tex

# out/A2-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) A2-Lauds-Cantor.lytex
# 	cd out && $(LATEX) A2-Lauds-Cantor.tex

# out/A2-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) A2-Vespers-Organ.lytex
# 	cd out && $(LATEX) A2-Vespers-Organ.tex

# out/A2-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) A2-Vespers-Cantor.lytex
# 	cd out && $(LATEX) A2-Vespers-Cantor.tex

# out/A3-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) A3-Lauds-Organ.lytex
# 	cd out && $(LATEX) A3-Lauds-Organ.tex

# out/A3-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) A3-Lauds-Cantor.lytex
# 	cd out && $(LATEX) A3-Lauds-Cantor.tex

# out/A3-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) A3-Vespers-Organ.lytex
# 	cd out && $(LATEX) A3-Vespers-Organ.tex

# out/A3-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) A3-Vespers-Cantor.lytex
# 	cd out && $(LATEX) A3-Vespers-Cantor.tex

# out/A4-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) A4-Lauds-Organ.lytex
# 	cd out && $(LATEX) A4-Lauds-Organ.tex

# out/A4-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) A4-Lauds-Cantor.lytex
# 	cd out && $(LATEX) A4-Lauds-Cantor.tex

# out/A4-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) A4-Vespers-Organ.lytex
# 	cd out && $(LATEX) A4-Vespers-Organ.tex

# out/A4-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) A4-Vespers-Cantor.lytex
# 	cd out && $(LATEX) A4-Vespers-Cantor.tex

# out/A5-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) A5-Lauds-Organ.lytex
# 	cd out && $(LATEX) A5-Lauds-Organ.tex

# out/A5-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) A5-Lauds-Cantor.lytex
# 	cd out && $(LATEX) A5-Lauds-Cantor.tex

# out/A5-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) A5-Vespers-Organ.lytex
# 	cd out && $(LATEX) A5-Vespers-Organ.tex

# out/A5-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) A5-Vespers-Cantor.lytex
# 	cd out && $(LATEX) A5-Vespers-Cantor.tex

# out/A6-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) A6-Lauds-Organ.lytex
# 	cd out && $(LATEX) A6-Lauds-Organ.tex

# out/A6-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) A6-Lauds-Cantor.lytex
# 	cd out && $(LATEX) A6-Lauds-Cantor.tex

# out/A6-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) A6-Vespers-Organ.lytex
# 	cd out && $(LATEX) A6-Vespers-Organ.tex

# out/A6-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) A6-Vespers-Cantor.lytex
# 	cd out && $(LATEX) A6-Vespers-Cantor.tex

# out/A7-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) A7-Lauds-Organ.lytex
# 	cd out && $(LATEX) A7-Lauds-Organ.tex

# out/A7-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) A7-Lauds-Cantor.lytex
# 	cd out && $(LATEX) A7-Lauds-Cantor.tex

# out/B0-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) B0-Vespers-Organ.lytex
# 	cd out && $(LATEX) B0-Vespers-Organ.tex

# out/B0-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) B0-Vespers-Cantor.lytex
# 	cd out && $(LATEX) B0-Vespers-Cantor.tex

# out/B1-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) B1-Lauds-Organ.lytex
# 	cd out && $(LATEX) B1-Lauds-Organ.tex

# out/B1-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) B1-Lauds-Cantor.lytex
# 	cd out && $(LATEX) B1-Lauds-Cantor.tex

# out/B1-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) B1-Vespers-Organ.lytex
# 	cd out && $(LATEX) B1-Vespers-Organ.tex

# out/B1-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) B1-Vespers-Cantor.lytex
# 	cd out && $(LATEX) B1-Vespers-Cantor.tex

# out/B2-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) B2-Lauds-Organ.lytex
# 	cd out && $(LATEX) B2-Lauds-Organ.tex

# out/B2-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) B2-Lauds-Cantor.lytex
# 	cd out && $(LATEX) B2-Lauds-Cantor.tex

# out/B2-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) B2-Vespers-Organ.lytex
# 	cd out && $(LATEX) B2-Vespers-Organ.tex

# out/B2-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) B2-Vespers-Cantor.lytex
# 	cd out && $(LATEX) B2-Vespers-Cantor.tex

# out/B3-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) B3-Lauds-Organ.lytex
# 	cd out && $(LATEX) B3-Lauds-Organ.tex

# out/B3-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) B3-Lauds-Cantor.lytex
# 	cd out && $(LATEX) B3-Lauds-Cantor.tex

# out/B3-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) B3-Vespers-Organ.lytex
# 	cd out && $(LATEX) B3-Vespers-Organ.tex

# out/B3-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) B3-Vespers-Cantor.lytex
# 	cd out && $(LATEX) B3-Vespers-Cantor.tex

# out/B4-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) B4-Lauds-Organ.lytex
# 	cd out && $(LATEX) B4-Lauds-Organ.tex

# out/B4-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) B4-Lauds-Cantor.lytex
# 	cd out && $(LATEX) B4-Lauds-Cantor.tex

# out/B4-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) B4-Vespers-Organ.lytex
# 	cd out && $(LATEX) B4-Vespers-Organ.tex

# out/B4-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) B4-Vespers-Cantor.lytex
# 	cd out && $(LATEX) B4-Vespers-Cantor.tex

# out/B5-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) B5-Lauds-Organ.lytex
# 	cd out && $(LATEX) B5-Lauds-Organ.tex

# out/B5-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) B5-Lauds-Cantor.lytex
# 	cd out && $(LATEX) B5-Lauds-Cantor.tex

# out/B5-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) B5-Vespers-Organ.lytex
# 	cd out && $(LATEX) B5-Vespers-Organ.tex

# out/B5-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) B5-Vespers-Cantor.lytex
# 	cd out && $(LATEX) B5-Vespers-Cantor.tex

# out/B6-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) B6-Lauds-Organ.lytex
# 	cd out && $(LATEX) B6-Lauds-Organ.tex

# out/B6-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) B6-Lauds-Cantor.lytex
# 	cd out && $(LATEX) B6-Lauds-Cantor.tex

# out/B6-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) B6-Vespers-Organ.lytex
# 	cd out && $(LATEX) B6-Vespers-Organ.tex

# out/B6-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) B6-Vespers-Cantor.lytex
# 	cd out && $(LATEX) B6-Vespers-Cantor.tex

# out/B7-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) B7-Lauds-Organ.lytex
# 	cd out && $(LATEX) B7-Lauds-Organ.tex

# out/B7-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) B7-Lauds-Cantor.lytex
# 	cd out && $(LATEX) B7-Lauds-Cantor.tex

# out/C0-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) C0-Vespers-Organ.lytex
# 	cd out && $(LATEX) C0-Vespers-Organ.tex

# out/C0-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) C0-Vespers-Cantor.lytex
# 	cd out && $(LATEX) C0-Vespers-Cantor.tex

# out/C1-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) C1-Lauds-Organ.lytex
# 	cd out && $(LATEX) C1-Lauds-Organ.tex

# out/C1-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) C1-Lauds-Cantor.lytex
# 	cd out && $(LATEX) C1-Lauds-Cantor.tex

# out/C1-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) C1-Vespers-Organ.lytex
# 	cd out && $(LATEX) C1-Vespers-Organ.tex

# out/C1-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) C1-Vespers-Cantor.lytex
# 	cd out && $(LATEX) C1-Vespers-Cantor.tex

# out/C2-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) C2-Lauds-Organ.lytex
# 	cd out && $(LATEX) C2-Lauds-Organ.tex

# out/C2-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) C2-Lauds-Cantor.lytex
# 	cd out && $(LATEX) C2-Lauds-Cantor.tex

# out/C2-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) C2-Vespers-Organ.lytex
# 	cd out && $(LATEX) C2-Vespers-Organ.tex

# out/C2-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) C2-Vespers-Cantor.lytex
# 	cd out && $(LATEX) C2-Vespers-Cantor.tex

# out/C3-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) C3-Lauds-Organ.lytex
# 	cd out && $(LATEX) C3-Lauds-Organ.tex

# out/C3-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) C3-Lauds-Cantor.lytex
# 	cd out && $(LATEX) C3-Lauds-Cantor.tex

# out/C3-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) C3-Vespers-Organ.lytex
# 	cd out && $(LATEX) C3-Vespers-Organ.tex

# out/C3-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) C3-Vespers-Cantor.lytex
# 	cd out && $(LATEX) C3-Vespers-Cantor.tex

# out/C4-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) C4-Lauds-Organ.lytex
# 	cd out && $(LATEX) C4-Lauds-Organ.tex

# out/C4-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) C4-Lauds-Cantor.lytex
# 	cd out && $(LATEX) C4-Lauds-Cantor.tex

# out/C4-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) C4-Vespers-Organ.lytex
# 	cd out && $(LATEX) C4-Vespers-Organ.tex

# out/C4-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) C4-Vespers-Cantor.lytex
# 	cd out && $(LATEX) C4-Vespers-Cantor.tex

# out/C5-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) C5-Lauds-Organ.lytex
# 	cd out && $(LATEX) C5-Lauds-Organ.tex

# out/C5-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) C5-Lauds-Cantor.lytex
# 	cd out && $(LATEX) C5-Lauds-Cantor.tex

# out/C5-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) C5-Vespers-Organ.lytex
# 	cd out && $(LATEX) C5-Vespers-Organ.tex

# out/C5-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) C5-Vespers-Cantor.lytex
# 	cd out && $(LATEX) C5-Vespers-Cantor.tex

# out/C6-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) C6-Lauds-Organ.lytex
# 	cd out && $(LATEX) C6-Lauds-Organ.tex

# out/C6-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) C6-Lauds-Cantor.lytex
# 	cd out && $(LATEX) C6-Lauds-Cantor.tex

# out/C6-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) C6-Vespers-Organ.lytex
# 	cd out && $(LATEX) C6-Vespers-Organ.tex

# out/C6-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) C6-Vespers-Cantor.lytex
# 	cd out && $(LATEX) C6-Vespers-Cantor.tex

# out/C7-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) C7-Lauds-Organ.lytex
# 	cd out && $(LATEX) C7-Lauds-Organ.tex

# out/C7-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) C7-Lauds-Cantor.lytex
# 	cd out && $(LATEX) C7-Lauds-Cantor.tex

# out/D0-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) D0-Vespers-Organ.lytex
# 	cd out && $(LATEX) D0-Vespers-Organ.tex

# out/D0-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) D0-Vespers-Cantor.lytex
# 	cd out && $(LATEX) D0-Vespers-Cantor.tex

# out/D1-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) D1-Lauds-Organ.lytex
# 	cd out && $(LATEX) D1-Lauds-Organ.tex

# out/D1-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) D1-Lauds-Cantor.lytex
# 	cd out && $(LATEX) D1-Lauds-Cantor.tex

# out/D1-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) D1-Vespers-Organ.lytex
# 	cd out && $(LATEX) D1-Vespers-Organ.tex

# out/D1-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) D1-Vespers-Cantor.lytex
# 	cd out && $(LATEX) D1-Vespers-Cantor.tex

# out/D2-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) D2-Lauds-Organ.lytex
# 	cd out && $(LATEX) D2-Lauds-Organ.tex

# out/D2-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) D2-Lauds-Cantor.lytex
# 	cd out && $(LATEX) D2-Lauds-Cantor.tex

# out/D2-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) D2-Vespers-Organ.lytex
# 	cd out && $(LATEX) D2-Vespers-Organ.tex

# out/D2-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) D2-Vespers-Cantor.lytex
# 	cd out && $(LATEX) D2-Vespers-Cantor.tex

# out/D3-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) D3-Lauds-Organ.lytex
# 	cd out && $(LATEX) D3-Lauds-Organ.tex

# out/D3-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) D3-Lauds-Cantor.lytex
# 	cd out && $(LATEX) D3-Lauds-Cantor.tex

# out/D3-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) D3-Vespers-Organ.lytex
# 	cd out && $(LATEX) D3-Vespers-Organ.tex

# out/D3-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) D3-Vespers-Cantor.lytex
# 	cd out && $(LATEX) D3-Vespers-Cantor.tex

# out/D4-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) D4-Lauds-Organ.lytex
# 	cd out && $(LATEX) D4-Lauds-Organ.tex

# out/D4-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) D4-Lauds-Cantor.lytex
# 	cd out && $(LATEX) D4-Lauds-Cantor.tex

# out/D4-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) D4-Vespers-Organ.lytex
# 	cd out && $(LATEX) D4-Vespers-Organ.tex

# out/D4-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) D4-Vespers-Cantor.lytex
# 	cd out && $(LATEX) D4-Vespers-Cantor.tex

# out/D5-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) D5-Lauds-Organ.lytex
# 	cd out && $(LATEX) D5-Lauds-Organ.tex

# out/D5-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) D5-Lauds-Cantor.lytex
# 	cd out && $(LATEX) D5-Lauds-Cantor.tex

# out/D5-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) D5-Vespers-Organ.lytex
# 	cd out && $(LATEX) D5-Vespers-Organ.tex

# out/D5-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) D5-Vespers-Cantor.lytex
# 	cd out && $(LATEX) D5-Vespers-Cantor.tex

# out/D6-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) D6-Lauds-Organ.lytex
# 	cd out && $(LATEX) D6-Lauds-Organ.tex

# out/D6-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) D6-Lauds-Cantor.lytex
# 	cd out && $(LATEX) D6-Lauds-Cantor.tex

# out/D6-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) D6-Vespers-Organ.lytex
# 	cd out && $(LATEX) D6-Vespers-Organ.tex

# out/D6-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) D6-Vespers-Cantor.lytex
# 	cd out && $(LATEX) D6-Vespers-Cantor.tex

# out/D7-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) D7-Lauds-Organ.lytex
# 	cd out && $(LATEX) D7-Lauds-Organ.tex

# out/D7-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) D7-Lauds-Cantor.lytex
# 	cd out && $(LATEX) D7-Lauds-Cantor.tex

