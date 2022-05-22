\version "2.18.2"
\include "../../lbi_defs.ily"
\include "notes/B4-Lauds-1-Ant.ily"
\score {

    <<
        \transpose \frompitch \topitch {
            \new ChoirStaff \with { instrumentName = \markup {
                \center-column { \bold "Ant. 1"
                \line {  "(11)"  } 
            }
        }
    } 
    <<
        \new Staff \with { \omit TextScript }
        <<
            \set Staff.midiInstrument = #"drawbar organ"
            \clef treble
            \accidentalStyle forget
            \new Voice = "Soprano" \sopNotesAnt
            \new Voice = "Alto" \altoNotesAnt
            \new Lyrics \lyricsto Soprano \text
            %\new Lyrics \lyricsto Soprano \textB
        >>
        \new Staff ="down"
        <<
            \set Staff.midiInstrument = #"drawbar organ"
            \clef bass
            \accidentalStyle forget
            \new Voice = "Tenor" \tenorNotesAnt
            \new Voice = "Bass" \bassNotesAnt
        >>
    >>
}
    >>

    \layout 
    { 
        ragged-last = ##t
        \context 
        { 
            \Staff 
            \remove Time_signature_engraver 
        } 

    }
%    \midi {}

}
