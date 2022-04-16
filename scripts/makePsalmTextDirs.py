import fileinput
from pathlib import Path

psalmSkel = r"""\
\version "2.20.0"
\include "../lbi_defs.ily"

\include "../psalmtones/notes/"
psalmtone = # ""

\header {
    title = ""
    subtitle = ""
    %subsubtitle = "Subsubtitle"
}

\include "../psalmtexts/"

sopMusic = {
    \global
    \voiceOne
    \sopranoOne
}
altoMusic = {
    \global
    \voiceTwo
    \altoOne
}
tenorMusic = {
    \global
    \voiceOne
    \tenorOne
}
bassMusic = {
    \global
    \voiceTwo
    \bassOne
}

\score {
    <<
        \transpose a a {
            \new ChoirStaff \with { instrumentName = \psalmtone }
            <<
                \new Staff ="up"
                   <<
                        \clef treble
                        \accidentalStyle forget
                        \new Voice = "Soprano" \sopMusic
                        \new Voice = "Alto" \altoMusic
                        \new Lyrics \lyricsto Soprano \text
                        \new Lyrics \lyricsto Soprano \textB
                        %\new Lyrics \lyricsto Soprano \textC
                    >>
                \new Staff ="down"
                    <<
                        \clef bass
                        \accidentalStyle forget
                        \new Voice = "Tenor" \tenorMusic
                        \new Voice = "Bass" \bassMusic
                    >>
            >>
        }
    >>

    \layout {
        \context {
            \Staff
            \remove Time_signature_engraver
        }


    }

}"""


# psalmTitles = [z.strip() for z in open('psalmnums.txt')]

beats = ('34', '43', '44', '33', '42', '32', '23')

def makeTextDirs(psalmtitles):
    for title in psalmTitles:
        path = Path(f'/home/ryan/sheetmusic/lbi/psalms/{title}')
        print(path)
        if not path.exists():
            path.mkdir(parents=True, exist_ok=True)
            Path(path, f'{title}.txt').touch()
            for beat in beats:
                newpath = path / beat
                newpath.mkdir(parents=True, exist_ok=True)
                Path(newpath, f'{title}.ily').touch()

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

def makePsalmFiles():
    path = Path('/home/ryan/sheetmusic/lbi/week3/')
    toChange = list(path.glob('C*Psalm*.ly'))
    for file in toChange:
        if file.stat().st_size == 0:
            file.write_text(psalmSkel)

def makeProperOfSaints():
    saints = [z.strip() for z in
            open('/home/ryan/sheetmusic/lbi/Proper-of-Saints.md')
            if '#' not in z
            if not z == ' ']
    p = Path('/home/ryan/sheetmusic/lbi/properOfSaints/')
    for saint in saints:
        newp = p.joinpath(saint)
        newp.mkdir(exist_ok=True)

def main():
    makeProperOfSaints()
    return

if __name__ == "__main__":
    main()
