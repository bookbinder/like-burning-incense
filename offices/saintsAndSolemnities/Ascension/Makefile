LILYPOND-BOOK=lilypond-book -o out --pdf
LATEX=xelatex
LUATEX=lualatex -shell-escape

cur:
	# rm -rf out/*/
	# rm -rf tmp-ly/*.*
	$(LUATEX) ScoreCantorLong.tex
	okular ScoreCantorLong.pdf
	$(LUATEX) ScoreOrganLong.tex
	okular ScoreOrganLong.pdf
