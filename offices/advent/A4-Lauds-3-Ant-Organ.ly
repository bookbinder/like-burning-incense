\version "2.20.0"

\include "../../lbi_defs.ily"
\include "notes/A4-Lauds-3-Ant.ily"
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
               \clef treble \antKeysig
               \accidentalStyle forget
               \new Voice = "Soprano" { \global \voiceOne \sopNotesAnt }
               \new Voice = "Alto" { \global \voiceTwo \altoNotesAnt }
               \new Lyrics \lyricsto Soprano \text
           >>
           \new Staff = "down"
           <<
               \midi_instrument
               \clef bass \antKeysig
               \accidentalStyle forget
               \new Voice = "Tenor" { \global \voiceThree \tenorNotesAnt }
               \new Voice = "Bass" { \global \voiceFour \bassNotesAnt }
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
    %\midi {}    
}

