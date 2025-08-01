\version "2.24.0"

\include "/home/ryan/scores/like-burning-incense/lbi_defs.ily"
\include "/home/ryan/scores/like-burning-incense/offices/advent/notes/AC1-Lauds-2-Ant.ily"
\include #(string-append "/home/ryan/scores/like-burning-incense/psalmtones/notes/" psalmtone "-notes.ily")


\score {
  \transpose \master-from-pitch \master-to-pitch {
    <<
      \new ChoirStaff \with {
        instrumentName = \markup {
          \center-column {
            \bold { \line { Ant. \antiphon } }
            \concat { \psalmtone } }
        }
      }   
      <<
        \new Staff = "up"
        <<
          \clef treble \antKeysig
          \antKeysig
          \accidentalStyle forget
          \new Voice = "Soprano" { \voiceOne \global { \global \voiceOne \sopNotesAnt } }
          \new Voice = "Alto" { \voiceTwo \global { \global \voiceTwo \altoNotesAnt } }
          \new Lyrics \lyricsto Soprano \text
        >>
        \new Staff = "down"
        <<
          \clef bass \antKeysig
          \antKeysig
          \accidentalStyle forget
          \new Voice = "Tenor" { \voiceThree \global { \global \voiceThree \tenorNotesAnt } }
          \new Voice = "Bass" { \voiceFour \global { \global \voiceFour \bassNotesAnt } }
        >>
      >>
    >>
  } 
  \layout {
    ragged-last = ##t
    indent = 0.5\in
    \context {
      \Staff
      \remove Time_signature_engraver
    } 
  }
}
