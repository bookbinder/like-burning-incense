#!/usr/bin/env python3
from pathlib import Path
import re

def main():
    p = Path("/home/ryan/scores/lbi/offices/week2/notes")
    for file in p.iterdir():
        namePart = file.name.replace("-Ant.ily", "")
        pScore = Path("/home/ryan/scores/lbi/offices/week2/", 
                     f"{namePart}-Psalm-Organ.ly")

        scoreTxt = pScore.read_text()
        fileTxt = file.read_text()
        if re.search("#\(define psalmnum \"([^\"]+)\".*\n", scoreTxt):
            psalmNo = re.search("#\(define psalmnum \"([^\"]+)\".*\n", scoreTxt)[1]
        if re.search("#\(define psalmtone \"([^\"]+)\".*\n", scoreTxt):
            psalmTone = re.search("#\(define psalmtone \"([^\"]+)\".*\n", scoreTxt)[1]
        if re.search("#\(define psalmstruct \"([^\"]+)\".*\n", scoreTxt):
            psalmStruct = re.search("#\(define psalmtonestruct \"([^\"]+)\".*\n", scoreTxt)[1]
        if re.search("#\(define psalmnum \"([^\"]+)\".*\n", scoreTxt):
            fileTxt = re.sub("\n(psalmtone.*)", f"\n\\1\npsalmnum = \"{psalmNo}\"", fileTxt)
        if re.search("#\(define psalmstruct \"([^\"]+)\".*\n", scoreTxt):
            fileTxt = re.sub("\n(psalmnum.*)", f"\n\\1\npsalmstruct = \"{psalmStruct}\"", fileTxt)
        scoreTxt = re.sub(".*define psalm.*\n", "", scoreTxt)
        scoreTxt = re.sub(".*transposition interval for psalm.*\n.*\n.*",
                          f"% get variables from notes file\n\\\include \"notes/{namePart}-Ant.ily\"", scoreTxt)
        file.write_text(fileTxt)
        pScore.write_text(scoreTxt)

if __name__ == "__main__":
    main()

