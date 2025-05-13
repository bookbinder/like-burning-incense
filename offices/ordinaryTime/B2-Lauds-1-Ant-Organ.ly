\version "2.20.0"

\include "../../lbi_defs.ily"
\include "notes/B2-Lauds-1-Ant.ily"
\include #(string-append "../../psalmtones/notes/" psalmtone "-notes.ily")


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
               \new Voice = "Tenor" { \voiceOne \global \tenorNotesAnt }
               \new Voice = "Bass" { \voiceTwo \global \bassNotesAnt }
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
    %\midi {}
}