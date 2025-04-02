\version "2.20.0"

\include "../../lbi_defs_cantor.ily"
\include "notes/8Sun1-Vespers-Mag-Ant.ily"
\include #(string-append "../../psalmtones/notes/" psalmtone "-notes.ily")


\score {
    \new Staff \with { instrumentName = \markup {
        \center-column {
            \bold { \line { Ant. \antiphon } }
            \concat { #psalmtone } }
        }
    }
    <<
        \midi_instrument
        \clef treble
        \accidentalStyle forget
        \new Voice = "Soprano" {
            \oneVoice \autoLineBreaksOn \sopNotesAnt \autoLineBreaksOff
            \allowBreak
            \transpose \frompitch \topitch {
                \small \sopranoShort
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
}
