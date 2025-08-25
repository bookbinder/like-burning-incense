\version "2.24.0"

\include "/home/ryan/scores/like-burning-incense/lbi_defs_cantor.ily"
\include "notes/LA0-Vespers-2-Ant.ily"
\include #(string-append "/home/ryan/scores/like-burning-incense/psalmtones/notes/" psalmtone "-notes.ily")


\score {
  \transpose \master-from-pitch \master-to-pitch {
    \new Staff 
    <<
      %% \midi_instrument
      \clef treble \antKeysig
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
      \new Lyrics \lyricsto Soprano { \override LyricText.font-size = \lyricsize
                                      \text}
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
