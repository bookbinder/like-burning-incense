\version "2.18.2"
\include "../../lbi_defs.ily"
\include "notes/B0-Vespers-3-Ant.ily"
\score {

    <<
        \transpose \frompitch \topitch {
            \new ChoirStaff \with { instrumentName = \markup {
                \center-column { \bold "Ant. 3."
                \line {  "(20)"  } 
            }
        }
    } 
    <<
        \new Staff ="up"
        <<
            \clef treble
            \accidentalStyle forget
            \new Voice = "Soprano" \sopNotesAnt
            \new Voice = "Alto" \altoNotesAnt
            \new Lyrics \lyricsto Soprano \text
            %\new Lyrics \lyricsto Soprano \textB
        >>
        \new Staff ="down"
        <<
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

}
