\version "2.24.0"

\include "/home/ryan/scores/like-burning-incense/lbi_defs.ily"
\include "notes/EA7-Lauds-2-Ant.ily"
\include #(string-append "/home/ryan/scores/like-burning-incense/psalmtones/notes/" psalmtone "-notes.ily")

%% update

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
          \clef treble \antKeysig
          \accidentalStyle forget
          \new Voice = "Soprano" { \voiceOne \global \sopNotesAnt }
          \new Voice = "Alto" { \voiceTwo \global \altoNotesAnt }
          \new Lyrics \lyricsto Soprano \text
        >>
        \new Staff = "down"
        <<
          \midi_instrument
          \clef bass \antKeysig
          \accidentalStyle forget
          \new Voice = "Tenor" { \voiceThree \global \tenorNotesAnt }
          \new Voice = "Bass" { \voiceFour \global \bassNotesAnt }
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
