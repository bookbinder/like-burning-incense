\version "2.24.0"

\include "/home/ryan/scores/like-burning-incense/lbi_defs.ily"
\include "notes/F3-Lauds-3-Ant.ily"
\include #(string-append "/home/ryan/scores/like-burning-incense/psalmtones/notes/" psalmtone "-notes.ily")


\score {
  \transpose \master-from-pitch \master-to-pitch {
    <<
      \new ChoirStaff \with {
        instrumentName = \markup {
          \center-column {
            \bold { \line { Ant. \antiphon } }
            \concat { (#psalmtone) } }
        }
      }   
      <<
        \new Staff = "up"
        <<
          \midi_instrument
          \clef treble
          \accidentalStyle forget
          \new Voice = "Soprano" \sopNotesAnt
          \new Voice = "Alto" \altoNotesAnt
          \new Lyrics \lyricsto Soprano \text
        >>
        \new Staff = "down"
        <<
          \midi_instrument
          \clef bass
          \accidentalStyle forget
          \new Voice = "Tenor" \tenorNotesAnt
          \new Voice = "Bass" \bassNotesAnt
        >>
      >>
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
