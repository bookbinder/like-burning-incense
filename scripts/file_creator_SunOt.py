"""Create and populate files for offices/sundaysOT directory and
offices/sundaysOT/notes subdirectory. Will need to edit files in the notes
subdirectory later with antiphon music. For now, store these files in the temp
subdirectory of this (scripts) directory. Then move them by hand carefully."""

from pathlib import Path
from filename_creator import filenamesSunOT


def lyfiles(file_names):
    "Create and populate ly files in the temp directory"
    antCantorStr = Path('../skel/Ant-Cantor.ily').read_text()
    antOrganStr = Path('../skel/Ant-Organ.ily').read_text()
    psalmOrganStr = Path('../skel/Psalm-Organ.ily').read_text()
    for f in file_names:
        name = '-'.join(f.split('-')[:3])
        if "Ant-Cantor" in f:
            curAntCantorStr = antCantorStr.replace('A0-Vespers-1', name)
            Path(f'temp/{f}').write_text(curAntCantorStr)
        if "Ant-Organ" in f:
            curAntOrganStr = antOrganStr.replace('A0-Vespers-1', name)
            Path(f'temp/{f}').write_text(curAntOrganStr)
        if "Psalm-Organ" in f:
            name = '-'.join(f.split('-')[:3])
            curPsalmOrganStr = psalmOrganStr.replace('A0-Vespers-1', name)
            Path(f'temp/{f}').write_text(curPsalmOrganStr)


def lytexfiles(file_names):
    "Create and populate lytex files in the temp directory"
    lytexStr = Path('../skel/sunOT.lytex').read_text()
    for f in file_names:
        sunday = f[:f.index('S')]
        curLytexStr = lytexStr.replace('changeme', f"{f.split('-')[0]}0", 2)
        curLytexStr = curLytexStr.replace('changeme', f"{f.split('-')[0]}1")
        curLytexStr = curLytexStr.replace('XX Sunday in', f"Sunday {sunday},")
        Path(f'temp/{f}').write_text(curLytexStr)


def ilyfiles(file_names):
    "Create and populate ily files in the temp/notes directory"
    ilyStr = Path('../skel/notes.ily').read_text()
    for f in file_names:
        Path(f'temp/notes/{f}').write_text(ilyStr)


def scorefiles(title='Score'):
    "Create and populate score files in the temp directory"
    scoreOrganStr = Path('../skel/ScoreOrganSunOT.tex').read_text().replace('<title>', title)
    scoreCantorStr = Path('../skel/ScoreCantorSunOT.tex').read_text().replace('<title>', title)
    Path('temp/ScoreOrgan.tex').write_text(scoreOrganStr)
    Path('temp/ScoreCantor.tex').write_text(scoreCantorStr)


def makefile():
    "Create and populate the Makefile for the temp directory"
    makefileStr = Path('../skel/SunOTMakefile').read_text()
    Path('temp/Makefile').write_text(makefileStr)

def openingverse():
    "Create and populate Opening Verse files for the temp directory"
    openOrganStr = Path('../skel/OpeningVerse-Organ.lytex').read_text()
    openCantorStr = Path('../skel/OpeningVerse-Cantor.lytex').read_text()
    Path('temp/OpeningVerse-Organ.lytex').write_text(openOrganStr)
    Path('temp/OpeningVerse-Cantor.lytex').write_text(openCantorStr)

lyNames, lytexNames, ilyNames = filenamesSunOT()

lyfiles(lyNames)
lytexfiles(lytexNames)
ilyfiles(ilyNames)
scorefiles('Gospel Canticles for Sundays in Ordinary Time')
makefile()
openingverse()
