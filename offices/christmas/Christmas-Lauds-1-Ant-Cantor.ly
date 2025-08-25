\version "2.24.0"

\include "/home/ryan/scores/like-burning-incense/lbi_defs_cantor.ily"
\include "/home/ryan/scores/like-burning-incense/offices/christmas/notes/Christmas-Lauds-1-Ant.ily"
\include #(string-append "/home/ryan/scores/like-burning-incense/psalmtones/notes/" psalmtone "-notes.ily")


\score {
  \transpose \master-from-pitch \master-to-pitch {
    \new Staff 
    <<
      %% \midi_instrument
      \clef treble \antKeysig
      \accidentalStyle forget
      \new Voice = "Soprano" {
        \mark \markup { \small \psalmtone } \global \oneVoice \sopNotesAnt
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
