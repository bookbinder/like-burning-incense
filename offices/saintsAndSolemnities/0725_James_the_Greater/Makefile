LILYPOND-BOOK=lilypond-book -o out --pdf
LATEX=xelatex
LUATEX=lualatex -shell-escape

cur:
	# rm -rf out/*/
	# rm -rf tmp-ly/*.*
	# $(LUATEX) ScoreCantorLong.tex
	# evince ScoreCantorLong.pdf
	$(LUATEX) ScoreOrganLong.tex
	evince ScoreOrganLong.pdf
