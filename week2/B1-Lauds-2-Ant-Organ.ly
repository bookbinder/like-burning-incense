\version "2.20.0"
\include "../lbi_defs.ily"
\include "notes/B1-Lauds-2-Ant.ily"
\score {

    <<
        \transpose e e {
            \new ChoirStaff \with { instrumentName = \markup {
                \center-column { \bold "Ant. 2"
                \line {  "(37)"  } 
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

\layout {
    ragged-last = ##t
    \context { 
        \Staff 
        \remove Time_signature_engraver 
    } 

} 

}
