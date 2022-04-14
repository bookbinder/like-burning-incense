import fileinput
from pathlib import Path


psalmTitles = (
    "1_Pet_2_21-24", "1_Sam_2_1-10", "Col_1_12-20", "Dan_3_26,_27,_29,_34-41",
    "Dan_3_52-57", "Dan_3_57-88,_56", "Deut_32_1-12", "Eph_1_3-10",
    "Ezek_36_24-28", "Hab_3_2-4,_13a,_15-19", "Isa_02_2-5", "Isa_12_1-6",
    "Isa_26_1-4,_7-9,_12", "Isa_33_13-16", "Isa_40_10-17", "Isa_42_10-16",
    "Isa_61_10--62_5", "Isa_66_10-14a", "Jer_14_17-21", "Phil_2_6-11",
    "Ps_008", "Ps_051", "Ps_062", "Ps_067", "Ps_072_12-19", "Ps_072_02-11",
    "Ps_077", "Ps_080", "Ps_081", "Ps_084", "Ps_085", "Ps_086", "Ps_087",
    "Ps_090", "Ps_092", "Ps_093", "Ps_096", "Ps_097", "Ps_098", "Ps_099",
    "Ps_100", "Ps_101", "Ps_108", "Ps_110_1-5,_7", "Ps_111", "Ps_112",
    "Ps_113", "Ps_116_01-9", "Ps_116_10-19", "Ps_117", "Ps_118",
    "Ps_119_145-152_(XIX_Koph)", "Ps_121", "Ps_122", "Ps_123", "Ps_124",
    "Ps_125", "Ps_126", "Ps_127", "Ps_130", "Ps_131", "Ps_132_01-10",
    "Ps_132_11-18", "Ps_135_01-12", "Ps_135_13-21", "Ps_136_01-9",
    "Ps_136_10-26", "Ps_137_1-6", "Ps_138", "Ps_139_01-12",
    "Ps_139_13-18,_23-24", "Ps_143_1-11", "Ps_144_1-10", "Ps_144_1-8",
    "Ps_144_9-15", "Ps_145_01-13a", "Ps_145_13b-21", "Ps_146",
    "Ps_147_01-11", "Ps_147_12-20", "Ps_148", "Ps_150",
    "Rev_04_11_and_5_9,_10,_12", "Rev_11_17-18_and_12_10b-12a",
    "Rev_15_3-4", "Rev_19_1-7", "Tobit_13_8-11,_13-15", "Wis_9_1-6,_9-11"
)

beats = ('34', '43', '44', '33', '42', '32', '23')

def makeTextDirs(psalmtitles):
    for title in psalmTitles:
        path = Path(f'/home/ryan/sheetmusic/lbi/psalmtexts/{title}')
        path.mkdir(parents=True, exist_ok=True)

def makeBeatDirs(beats):
    path = Path('/home/ryan/sheetmusic/lbi/psalmtexts')
    for dir in path.iterdir():
        for item in beats:
            Path(path, dir, item).mkdir(exist_ok=True)

def touchTexts():
    path = Path('/home/ryan/sheetmusic/lbi/psalmtexts')
    for dir in path.iterdir():
        Path(dir, f'{dir.stem}.txt').unlink(missing_ok=True)
        Path(dir, f'{dir.stem}.txt').touch()

def touchTexts2():
    path = Path('/home/ryan/sheetmusic/lbi/psalmtexts')
    for dir in path.iterdir():
        for subdir in dir.iterdir():
            if subdir.is_dir():
                Path(subdir, f'{dir.stem}.txt').touch()

def renameToTxt():
    path = Path('/home/ryan/sheetmusic/lbi/psalmtexts')
    for dir in path.iterdir():
        myFile = Path(dir, f'{dir.stem}.ily')
        myFile.rename(myFile.with_suffix('.txt'))

def renameToIly2():
    path = Path('/home/ryan/sheetmusic/lbi/psalmtexts')
    for dir in path.iterdir():
        for subdir in dir.iterdir():
            if subdir.is_dir():
                myFile = Path(subdir, f'{dir.stem}.txt')
                try:
                    myFile.rename(myFile.with_suffix('.ily'))
                except FileNotFoundError:
                    print("moving on")

def addStuff():
    output = """\
text = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold
    \set stanza = # "1. "
    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "How lovely is your" dwell -- ing place,
    etc.
}
% textB = \lyricmode {
%     \override InstrumentName #'X-offset = #4
%     \override InstrumentName #'font-series = #'bold	
%     \set includeGraceNotes = ##t
%     \set stanza = # "2. "
%     \set shortVocalName = "2."
%     \set includeGraceNotes = ##t
%     \ll "The Lord will not refuse" an -- y good
% }"""
    return output


def addToFiles():
    path = Path('/home/ryan/sheetmusic/lbi/psalmtexts/')
    allIly = path.glob('**/*.ily')
    for file in allIly:
        if file.stat().st_size == 0:
            file.write_text(addStuff())

def adjustFiles():
    path = Path('/home/ryan/sheetmusic/lbi/psalmtexts/')
    allIly = list(path.glob('**/*.ily'))
    with fileinput.input(files=allIly, inplace=True) as f:
        for ip_line in f:
            op_line = ip_line.replace('%% ', '%')
            print(op_line, end='')

def main():
    touchTexts()
    return

if __name__ == "__main__":
    main()
