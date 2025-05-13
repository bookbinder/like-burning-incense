\version "2.24.0"

\include "/home/ryan/scores/like-burning-incense/lbi_defs_cantor.ily"
\include "notes/EA1-Vespers-3-Ant.ily"
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
      \clef treble \antKeysig
      \accidentalStyle forget
      \new Voice = "Soprano" {
        \sopNotesAnt
        \transpose \frompitch \topitch {
          \small \sopranoOneFlex
        }
      }
      \new Lyrics \lyricsto Soprano { \override LyricText.font-size = \lyricsize
				      \text }
    >>
  }  
  \layout {
      ragged-last = ##t
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}
