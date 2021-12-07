\version "2.20.0"
\include "../lbi_defs.ily"
\include "notes/A5-Lauds-2-Ant.ily"
\include "../psalmtones/notes/47-notes.ily"


\score {    
    \new Staff \with {  \omit TextScript instrumentName = \markup { 
            \center-column { \bold \antiphon \line { (\psalmtone) } } }} 
        <<
            \midi_instrument
            \clef treble
            \accidentalStyle forget
            \new Voice = "Soprano" { \sopNotesAnt \transpose a gis { \small \sopranoOneFlex }}
            \new Lyrics \lyricsto Soprano \text
        >>

    \layout { 
        \context { 
            \Staff 
            \remove Time_signature_engraver 
        } 

    }
}

