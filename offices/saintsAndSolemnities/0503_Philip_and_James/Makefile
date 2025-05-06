LUATEX=lualatex -shell-escape

cur:
	# rm -rf out/*/
	# rm -rf tmp-ly/*.*
	$(LUATEX) ScoreCantor.tex
	evince ScoreCantor.pdf
	$(LUATEX) ScoreOrgan.tex
	evince ScoreOrgan.pdf
