\version "2.18.2"
\include "notes/42-notes.ily"

sopMusic = {
    \global
    \voiceOne
    % \sopranoTwoFlex
    \sopranoOne
    \sopranoTwo
}
altoMusic = {
    \global
    \voiceTwo
    % \altoOneFlex
    % \altoTwoFlex
    \altoOne
    \altoTwo
}
tenorMusic = {
    \global
    \voiceOne
    % \tenorOneFlex
    % \tenorTwoFlex
    \tenorOne
    \tenorTwo
}
bassMusic = {
    \global
    \voiceTwo
    % \bassOneFlex
    % \bassTwoFlex
    \bassOne
    \bassTwo
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