\version "2.20.0"

\include "../../lbi_defs_cantor.ily"
\include "notes/33Sun1-Vespers-Mag-Ant.ily"
\include #(string-append "../../psalmtones/notes/" psalmtone "-notes.ily")


\score {
    \transpose \master-from-pitch \master-to-pitch {
  \new Staff
  <<
        \midi_instrument
        \clef treble \antKeysig
        \accidentalStyle forget
        \new Voice = "Soprano" {
            \oneVoice \autoLineBreaksOn \global 
    \mark \markup { \small \psalmtone }
    \sopNotesAnt \autoLineBreaksOff
            \allowBreak
            \transpose \frompitch \topitch {
                \small \sopranoShort
            }
        }
        \new Lyrics \lyricsto Soprano \text
    >>

    }
    \layout {
        \context {
            \Staff
            \remove Time_signature_engraver
        }
        
    }
}
