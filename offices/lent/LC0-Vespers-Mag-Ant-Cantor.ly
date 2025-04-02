\version "2.24.0"

\include "/home/ryan/scores/like-burning-incense/lbi_defs_cantor.ily"
\include "notes/LC0-Vespers-Mag-Ant.ily"
\include #(string-append "/home/ryan/scores/like-burning-incense/psalmtones/notes/" psalmtone "-notes.ily")


\score {
  \transpose \master-from-pitch \master-to-pitch {
    \new Staff \with {
      instrumentName = \markup {
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
  }  
  \layout {
    #(layout-set-staff-size 16)
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}
