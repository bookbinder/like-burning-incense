\version "2.24.0"

\include "/home/ryan/scores/like-burning-incense/lbi_defs.ily"
\include "notes/1-Vespers-Mag-Ant.ily"
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
          \new Voice = "Soprano" { \voiceOne \sopNotesAnt }
          \new Voice = "Alto" { \voiceTwo \altoNotesAnt }
          \new Lyrics \lyricsto Soprano \text
        >>
        \new Staff = "down"
        <<
          \midi_instrument
          \clef bass
          \accidentalStyle forget
          \new Voice = "Tenor" { \voiceThree \tenorNotesAnt }
          \new Voice = "Bass" { \voiceFour \bassNotesAnt }
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
