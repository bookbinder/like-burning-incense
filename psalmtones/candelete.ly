\version "2.18.2"
\include "notes/candelete-notes.ily"

sopMusic = {
    \global
    \voiceOne
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    %\sopranoOne
    %\sopranoTwo
}
altoMusic = {
    \global
    \voiceTwo
    \altoOne
    \altoTwo
    \altoOne
    \altoTwo
    \altoOne
    \altoTwo
    %\altoOne
    %\altoTwo
}

tenorMusic = {
    \global
    \voiceOne
    \tenorOne
    \tenorTwo
    \tenorOne
    \tenorTwo
    \tenorOne
    \tenorTwo
    %\tenorOne
    %\tenorTwo
}

bassMusic = {
    \global
    \voiceTwo
    \bassOne
    \bassTwo
    \bassOne
    \bassTwo
    \bassOne
    \bassTwo
    %\bassOne
    %\bassTwo
}

\score {

    \header {
        %piece = \markup { \fontsize #2 \bold "LBI_3a" }
    }
    <<
        \transpose a gis {



            \new ChoirStaff \with { instrumentName = #"42" } % LBI_7a
            <<
                \new Staff ="up"
                <<
                    \set Staff.midiInstrument = #"drawbar organ"
                    \clef treble
                    \accidentalStyle forget
                    \new Voice = "Soprano" \sopMusic
                    \new Voice = "Alto" \altoMusic
                    %\new Lyrics \lyricsto Soprano \text
                >>
                \new Staff ="down"
                <<
                    \set Staff.midiInstrument = #"drawbar organ"
                    \clef bass
                    \accidentalStyle forget
                    \new Voice = "Tenor" \tenorMusic
                    \new Voice = "Bass" \bassMusic
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
    \midi {}
}
