\version "2.20.0"

\include "../../lbi_defs.ily"
\include "notes/Easter2-Ant.ily"
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
               \new Voice = "Soprano" {
                 \sopNotesAnt
                 \transpose \frompitch \topitch {
                   \sopranoOneFlex \sopranoTwoFlex
                 }
               }
               \new Voice = "Alto" {
                 \altoNotesAnt
                 \transpose \frompitch \topitch {
                   \altoOneFlex \altoTwoFlex
                 }
               }
               \new Lyrics \lyricsto Soprano \text
           >>
           \new Staff = "down"
           <<
               \midi_instrument
               \clef bass
               \accidentalStyle forget
               \new Voice = "Tenor" {
                 \tenorNotesAnt
                 \transpose \frompitch \topitch {
                   \tenorOneFlex \tenorTwoFlex
                 }
               }
               \new Voice = "Bass" {
                 \bassNotesAnt
                 \transpose \frompitch \topitch {
                   \bassOneFlex \bassTwoFlex
                 }
               }
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

