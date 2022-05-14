#!/usr/bin/env python3
from pathlib import Path

def main():
    score = r"""\header {
    psalm_title = "Psalm __"
    psalm_subtitle = ""
}

sopMusic = {
    \global
    \voiceOne
    \sopranoOne 
    \sopranoTwo
    % \mark \markup {"D.C."}
}
altoMusic = {
    \global
    \voiceTwo
    \altoOne
    \altoTwo
}
tenorMusic = {
    \global
    \voiceOne
    \tenorOne
    \tenorTwo
}
bassMusic = {
    \global
    \voiceTwo
    \bassOne
    \bassTwo
}

\score {
    <<
        \transpose \frompitch \topitch {
            \new ChoirStaff \with { instrumentName = \psalmtone }
            <<
                \new Staff ="up"
                   <<
                        \clef treble
                        \accidentalStyle forget
                        \new Voice = "Soprano" \sopMusic
                        \new Voice = "Alto" \altoMusic
                        \new Lyrics \lyricsto Soprano \text
                        % \new Lyrics \lyricsto Soprano \textB
                        % \new Lyrics \lyricsto Soprano \textC
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

    p = Path('/home/ryan/sheetmusic/lbi/psalms/')
    for item in p.iterdir():
        if item.is_dir():
            if not list(item.glob(f"{item.name}.ily")):
                # item.joinpath(f"{item.name}.ily").write_text(score)
                print(item)


if __name__ == "__main__":
    main()

