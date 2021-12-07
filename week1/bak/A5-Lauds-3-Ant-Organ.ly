\version "2.20.0"
\include "../lbi_defs.ily"
\include "notes/A5-Lauds-3-Ant.ily"

\score {    
    <<
        \transpose e e {
            \new ChoirStaff \with { 
		instrumentName = \markup { \center-column { 
		\bold \fontsize #2 \antiphon \line {  \psalmtone  } } } } 
            <<
                \new Staff \with { \omit TextScript } %If you want to see text elements around the staff, comment out the with
                <<
                    \midi_instrument
                    \clef treble
                    \accidentalStyle forget
                    \new Voice = "Soprano" \sopNotesAnt
                    \new Voice = "Alto" \altoNotesAnt
                    \new Lyrics \lyricsto Soprano \text
                >>
                \new Staff ="down"
                <<
                    \midi_instrument
                    \clef bass
                    \accidentalStyle forget
                    \new Voice = "Tenor" \tenorNotesAnt
                    \new Voice = "Bass" \bassNotesAnt
                >>
            >>
        }
    >>

    \layout { 
        \context { 
            \Staff 
            \remove Time_signature_engraver 
        } 

    }
    %\midi {}
}
