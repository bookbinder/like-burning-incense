"""Generate a Makefile for a season in LBI. Do both organ and cantor parts"""

from filename_creator import filenamesSunOT

with open('testfile', 'w') as outfile:

    # define variables for use in Makefile
    outfile.write("LILYPOND-BOOK=lilypond-book -o out --pdf")
    outfile.write("\nLATEX=xelatex")

    # get list of names to populate the FILES variables
    orgfiles = []
    cantorfiles = []
    _, lytexFiles, _ = filenamesSunOT()

    for f in lytexFiles:
        name = f.split('-')[0]
        if "Organ" in f:
            orgfiles.append(f"out/{name}-Organ.pdf")
        if "Cantor" in f:
            cantorfiles.append(f"out/{name}-Cantor.pdf")

    outfile.write(f"\nORGAN-FILES := {' '.join(orgfiles)}")
    outfile.write(f"\nCANTOR-FILES := {' '.join(cantorfiles)}")

    # add entries to the Makefile
    outfile.write("\n\nScoreOrgan.tex: $(ORGAN-FILES)")
    outfile.write("\n\t$(LATEX) ScoreOrgan.tex")
    outfile.write("\n\nScoreCantor.tex: $(CANTOR-FILES)")
    outfile.write("\n\t$(LATEX) ScoreCantor.tex")

    for f in lytexFiles:
        name = f.split('-')[0]
        # organ
        outfile.write(f"\n\nout/{name}-Organ.pdf:")
        outfile.write(f"\n\t$(LILYPOND-BOOK) {name}-Organ.lytex")
        outfile.write(f"\n\tcd out && $(LATEX) {name}-Organ.tex")
        # cantor
        outfile.write(f"\n\nout/{name}-Cantor.pdf:")
        outfile.write(f"\n\t$(LILYPOND-BOOK) {name}-Cantor.lytex")
        outfile.write(f"\n\tcd out && $(LATEX) {name}-Cantor.tex")
