\version "2.24.0"

\include "/home/ryan/scores/like-burning-incense/lbi_defs_cantor.ily"
\include "notes/F6-Lauds-1-Ant.ily"
\include #(string-append "/home/ryan/scores/like-burning-incense/psalmtones/notes/" psalmtone "-notes.ily")


\score {
  \transpose \master-from-pitch \master-to-pitch {
    \new Staff \with {
      \omit TextScript instrumentName = \markup {
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
        \sopNotesAnt
        \transpose \frompitch \topitch {
          \small \sopranoOneFlex
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
