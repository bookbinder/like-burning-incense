LILYPOND-BOOK=lilypond-book -o out --pdf
LATEX=xelatex

cantor:
	rm -rf out/*/
	$(LILYPOND-BOOK) ScoreCantorBind.lytex
	cd out && $(LATEX) ScoreCantorBind.tex
	cd out && xdg-open ScoreCantorBind.pdf

LD1-Vespers:
	rm -rf out/*/
	$(LILYPOND-BOOK) LD1-Vespers-Organ.lytex
	cd out && $(LATEX) LD1-Vespers-Organ.tex
	cd out && xdg-open LD1-Vespers-Organ.pdf
	$(LILYPOND-BOOK) LD1-Vespers-Cantor.lytex
	cd out && $(LATEX) LD1-Vespers-Cantor.tex
	cd out && xdg-open LD1-Vespers-Cantor.pdf

LD1-Lauds:
	rm -rf out/*/
	$(LILYPOND-BOOK) LD1-Lauds-Organ.lytex
	cd out && $(LATEX) LD1-Lauds-Organ.tex
	cd out && xdg-open LD1-Lauds-Organ.pdf
	$(LILYPOND-BOOK) LD1-Lauds-Cantor.lytex
	cd out && $(LATEX) LD1-Lauds-Cantor.tex
	cd out && xdg-open LD1-Lauds-Cantor.pdf

LD0-Vespers:
	rm -rf out/*/
	$(LILYPOND-BOOK) LD0-Vespers-Organ.lytex
	cd out && $(LATEX) LD0-Vespers-Organ.tex
	cd out && xdg-open LD0-Vespers-Organ.pdf
	$(LILYPOND-BOOK) LD0-Vespers-Cantor.lytex
	cd out && $(LATEX) LD0-Vespers-Cantor.tex
	cd out && xdg-open LD0-Vespers-Cantor.pdf

LC1-Vespers:
	rm -rf out/*/
	$(LILYPOND-BOOK) LC1-Vespers-Organ.lytex
	cd out && $(LATEX) LC1-Vespers-Organ.tex
	cd out && xdg-open LC1-Vespers-Organ.pdf
	$(LILYPOND-BOOK) LC1-Vespers-Cantor.lytex
	cd out && $(LATEX) LC1-Vespers-Cantor.tex
	cd out && xdg-open LC1-Vespers-Cantor.pdf

LC1-Lauds:
	rm -rf out/*/
	# $(LILYPOND-BOOK) LC1-Lauds-Organ.lytex
	# cd out && $(LATEX) LC1-Lauds-Organ.tex
	# cd out && xdg-open LC1-Lauds-Organ.pdf
	$(LILYPOND-BOOK) LC1-Lauds-Cantor.lytex
	cd out && $(LATEX) LC1-Lauds-Cantor.tex
	cd out && xdg-open LC1-Lauds-Cantor.pdf

LC0-Vespers:
	rm -rf out/*/
	$(LILYPOND-BOOK) LC0-Vespers-Organ.lytex
	cd out && $(LATEX) LC0-Vespers-Organ.tex
	cd out && xdg-open LC0-Vespers-Organ.pdf
	$(LILYPOND-BOOK) LC0-Vespers-Cantor.lytex
	cd out && $(LATEX) LC0-Vespers-Cantor.tex
	cd out && xdg-open LC0-Vespers-Cantor.pdf

LB1-Vespers:
	rm -rf out/*/
	$(LILYPOND-BOOK) LB1-Vespers-Organ.lytex
	cd out && $(LATEX) LB1-Vespers-Organ.tex
	cd out && xdg-open LB1-Vespers-Organ.pdf
	$(LILYPOND-BOOK) LB1-Vespers-Cantor.lytex
	cd out && $(LATEX) LB1-Vespers-Cantor.tex
	cd out && xdg-open LB1-Vespers-Cantor.pdf

LB1-Lauds:
	rm -rf out/*/
	$(LILYPOND-BOOK) LB1-Lauds-Organ.lytex
	cd out && $(LATEX) LB1-Lauds-Organ.tex
	cd out && xdg-open LB1-Lauds-Organ.pdf
	$(LILYPOND-BOOK) LB1-Lauds-Cantor.lytex
	cd out && $(LATEX) LB1-Lauds-Cantor.tex
	cd out && xdg-open LB1-Lauds-Cantor.pdf

LB0-Vespers:
	rm -rf out/*/
	$(LILYPOND-BOOK) LB0-Vespers-Organ.lytex
	cd out && $(LATEX) LB0-Vespers-Organ.tex
	cd out && xdg-open LB0-Vespers-Organ.pdf
	$(LILYPOND-BOOK) LB0-Vespers-Cantor.lytex
	cd out && $(LATEX) LB0-Vespers-Cantor.tex
	cd out && xdg-open LB0-Vespers-Cantor.pdf



# LILYPOND-BOOK=lilypond-book -o out --pdf
# LATEX=xelatex
# ORGAN-FILES := out/LB0-Vespers-Organ.pdf out/LB1-Lauds-Organ.pdf
# CANTOR-FILES := out/LB0-Vespers-Cantor.pdf out/LB1-Lauds-Cantor.pdf

# # all: ScoreOrgan.tex ScoreCantor.tex
# all: ScoreOrgan.tex ScoreCantor.tex

# ScoreOrgan.tex: $(ORGAN-FILES)
# 	$(LATEX) ScoreOrgan.tex
# 	cp ScoreOrgan.pdf ../../pdf/ScoreOrgan.pdf
# 	rm -rf out/*/
# 	xdg-open ../../pdf/ScoreOrgan.pdf

# ScoreCantor.tex: $(CANTOR-FILES)
# 	$(LATEX) ScoreCantor.tex
# 	cp ScoreCantor.pdf ../../pdf/ScoreCantor.pdf
# 	rm -rf out/*/
# 	xdg-open ../../pdf/ScoreCantor.pdf

# out/LB0-Vespers-Organ.pdf:
# 	$(LILYPOND-BOOK) LB0-Vespers-Organ.lytex
# 	cd out && $(LATEX) LB0-Vespers-Organ.tex

# out/LB0-Vespers-Cantor.pdf:
# 	$(LILYPOND-BOOK) LB0-Vespers-Cantor.lytex
# 	cd out && $(LATEX) LB0-Vespers-Cantor.tex


# out/LB1-Lauds-Organ.pdf:
# 	$(LILYPOND-BOOK) LB1-Lauds-Organ.lytex
# 	cd out && $(LATEX) LB1-Lauds-Organ.tex

# out/LB1-Lauds-Cantor.pdf:
# 	$(LILYPOND-BOOK) LB1-Lauds-Cantor.lytex
# 	cd out && $(LATEX) LB1-Lauds-Cantor.tex
