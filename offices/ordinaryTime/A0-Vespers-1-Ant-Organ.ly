\version "2.20.0"


\include "../../lbi_defs.ily"
\include "notes/A0-Vespers-1-Ant.ily"
% \include "../../psalmtones/notes/39-notes.ily"
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
               \clef treble
               \accidentalStyle forget
               \new Voice = "Soprano" { \voiceOne \sopNotesAnt }
               \new Voice = "Alto" { \voiceTwo \altoNotesAnt }
               \new Lyrics \lyricsto Soprano \text
           >>
           \new Staff = "down"
           <<
               \clef bass
               \accidentalStyle forget
               \new Voice = "Tenor" { \voiceOne \tenorNotesAnt }
               \new Voice = "Bass" { \voiceTwo \bassNotesAnt }
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
}

