from pathlib import Path

p = Path('/home/ryan/sheetmusic/lbi/offices/week2/')

a = r"""\version "2.20.0"

\include "../../lbi_defs_cantor.ily"
\include "notes/"""

c = r""".ily"
\include #(string-append "../../psalmtones/notes/" psalmtone "-notes.ily")


\score {    
    \new Staff \with { \omit TextScript instrumentName = \markup { 
        \center-column { 
            \bold { \line { Ant. \antiphon } } 
            \concat { (#psalmtone) } } 
        }
    } 
    <<
        \midi_instrument
        \clef treble
        \accidentalStyle forget
        \new Voice = "Soprano" { 
            \sopNotesAnt 
            \transpose \frompitch \topitch { 
                \small \sopranoOneFlex 
            }
        }
        \new Lyrics \lyricsto Soprano \text
    >>

    \layout { 
        \context { 
            \Staff 
            \remove Time_signature_engraver 
        } 

    }
}"""

for item in p.glob('*Cantor*'):
    filename = item.stem
    item.write_text(a + filename + c)
