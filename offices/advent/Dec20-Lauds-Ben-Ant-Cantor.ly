\version "2.24.0"

\include "/home/ryan/scores/like-burning-incense/lbi_defs_cantor.ily"
\include "notes/Dec20-Lauds-Ben-Ant.ily"
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
      \antKeysig
      \accidentalStyle forget
      \new Voice = "Soprano" {
      \global
        \oneVoice
        \mark \markup {\small \psalmtone}
        \sopNotesAnt
        \transpose \frompitch \topitch {
          \small \sopranoShort
        }
      }
      \new Lyrics \lyricsto Soprano \text
    >>
  }  
  \layout {
    ragged-last = ##t
    %%% indent = 0.5\in
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}
