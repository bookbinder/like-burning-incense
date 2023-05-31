"""Create and populate files for offices/sundaysOT directory and
offices/sundaysOT/notes subdirectory. Will need to edit files in the notes
subdirectory later with antiphon music. For now, store these files in the temp
subdirectory of this (scripts) directory. Then move them by hand carefully."""

from pathlib import Path
from filename_creator import filenamesSunOT


lyFiles, lytexFiles, ilyFiles = filenamesSunOT()

# # ly files
antCantorStr = Path('../skel/Ant-Cantor.ily').read_text()
antOrganStr = Path('../skel/Ant-Organ.ily').read_text()
psalmOrganStr = Path('../skel/Psalm-Organ.ily').read_text()
for f in lyFiles:
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

# # lytex files
lytexStr = Path('../skel/sunOT.lytex').read_text()
for f in lytexFiles:
    curLytexStr = lytexStr.replace('changeme', f"{f.split('-')[0]}0", 2)
    curLytexStr = curLytexStr.replace('changeme', f"{f.split('-')[0]}1")
    Path(f'temp/{f}').write_text(curLytexStr)

# # ily files
ilyStr = Path('../skel/notes.ily').read_text()
for f in ilyFiles:
    Path(f'temp/notes/{f}').write_text(ilyStr)
