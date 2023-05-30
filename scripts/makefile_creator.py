"""Generate a Makefile for a season in LBI. Do both organ and cantor parts"""

from filename_creator import filenames2

with open('testfile', 'w') as outfile:

    # define variables for use in Makefile
    outfile.write("LILYPOND-BOOK=lilypond-book -o out --pdf")
    outfile.write("\nLATEX=xelatex")

    # get list of names to populate the FILES variables
    orgfiles = []
    cantorfiles = []
    for f in filenames2():
        orgfiles.append(f"out/{f}-Organ.pdf")
        cantorfiles.append(f"out/{f}-Cantor.pdf")
    outfile.write(f"\nORGAN-FILES := {' '.join(orgfiles)}")
    outfile.write(f"\nCANTOR-FILES := {' '.join(cantorfiles)}")

    # add entries to the Makefile
    outfile.write("\n\nScoreOrgan.tex: $(ORGAN-FILES)")
    outfile.write("\n\t$(LATEX) ScoreOrgan.tex")
    outfile.write("\n\nScoreCantor.tex: $(CANTOR-FILES)")
    outfile.write("\n\t$(LATEX) ScoreCantor.tex")
    for f in filenames2():
        # organ
        outfile.write(f"\n\nout/{f}-Organ.pdf:")
        outfile.write(f"\n\t$(LILYPOND-BOOK) {f}-Organ.lytex")
        outfile.write(f"\n\tcd out && $(LATEX) {f}-Organ.tex")
        # cantor
        outfile.write(f"\n\nout/{f}-Cantor.pdf:")
        outfile.write(f"\n\t$(LILYPOND-BOOK) {f}-Cantor.lytex")
        outfile.write(f"\n\tcd out && $(LATEX) {f}-Cantor.tex")
