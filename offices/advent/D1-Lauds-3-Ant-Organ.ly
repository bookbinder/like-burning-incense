\version "2.20.0"

\include "../../lbi_defs.ily"
\include "notes/D1-Lauds-3-Ant.ily"
\include #(string-append "../../psalmtones/notes/" psalmtone "-notes.ily")


\score {
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

    \layout {
        ragged-last = ##t
        \context {
            \Staff
            \remove Time_signature_engraver
        }

    }
    %\midi {}
}
