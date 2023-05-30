"""Create and populate files for offices/sundaysOT directory and
offices/sundaysOT/notes subdirectory. Will need to edit files in the notes
subdirectory. For now, store these files in the temp subdirectory of
the scripts directory. Then move them by hand carefully."""

from pathlib import Path
from filename_creator import filenamesSunOT

lyFiles, lytexFiles, ilyFiles = filenamesSunOT()

# # ily files
ilyTxt = Path('../skel/notes.ily').read_text()
for f in ilyFiles:
    Path(f'temp/notes/{f}').write_text(ilyTxt)


# # lytex files
lytexTxt = Path('../skel/sunOT.lytex').read_text()
for f in lytexFiles:
    curLytexTxt = lytexTxt.replace('changeme', f"{f.split('-')[0]}0", 2)
    curLytexTxt = curLytexTxt.replace('changeme', f"{f.split('-')[0]}1")
    Path(f'temp/{f}').write_text(curLytexTxt)


# # ly files
antCantorTxt = Path('../skel/Ant-Cantor.ily').read_text()
antOrganTxt = Path('../skel/Ant-Organ.ily').read_text()
psalmOrganTxt = Path('../skel/Psalm-Organ.ily').read_text()
for f in lyFiles:
    name = '-'.join(f.split('-')[:3])
    if "Ant-Cantor" in f:
        curAntCantorTxt = antCantorTxt.replace('A0-Vespers-1', name)
        Path(f'temp/{f}').write_text(curAntCantorTxt)
    if "Ant-Organ" in f:
        curAntOrganTxt = antOrganTxt.replace('A0-Vespers-1', name)
        Path(f'temp/{f}').write_text(curAntOrganTxt)
    if "Psalm-Organ" in f:
        name = '-'.join(f.split('-')[:3])
        curPsalmOrganTxt = psalmOrganTxt.replace('A0-Vespers-1', name)
        Path(f'temp/{f}').write_text(curPsalmOrganTxt)
