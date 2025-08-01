\version "2.24.0"

\include "/home/ryan/scores/like-burning-incense/lbi_defs.ily"
\include "notes/B0-Vespers-Mag-Ant.ily"
\include #(string-append "/home/ryan/scores/like-burning-incense/psalmtones/notes/" psalmtone "-notes.ily")

global = { \cadenzaOn \autoBeamOff }

\score {
  \transpose \master-from-pitch \master-to-pitch
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
               \clef treble \antKeysig
               \accidentalStyle forget
               \new Voice = "Soprano" { \voiceOne { \global \voiceOne \sopNotesAnt } }
               \new Voice = "Alto" { \voiceTwo { \global \voiceTwo \altoNotesAnt } }
               \new Lyrics \lyricsto Soprano \text
           >>
           \new Staff = "down"
           <<
               \clef bass \antKeysig
               \accidentalStyle forget
               \new Voice = "Tenor" { \voiceOne { \global \voiceThree \tenorNotesAnt } }
               \new Voice = "Bass" { \voiceTwo { \global \voiceFour \bassNotesAnt }  }
           >>
       >>
    >>
    \layout {
        ragged-last = ##t
    indent = 0.5\in
        \context {
            \Staff
            \remove Time_signature_engraver
        }
    }
}
