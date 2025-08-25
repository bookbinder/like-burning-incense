LILYPOND-BOOK=lilypond-book -o out --pdf
LATEX=xelatex
LUALATEX=lualatex --shell-escape

all:
	# rm -rf out/*/
	# rm -rf tmp-ly/*.*
	$(LUALATEX) ScoreCantorLong.tex
	evince ScoreCantorLong.pdf
	# $(LUALATEX) ScoreOrganLong.tex
	# evince ScoreOrganLong.pdf
