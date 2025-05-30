\version "2.18.2"
\include "/home/ryan/scores/like-burning-incense/lbi_defs.ily"
\include "notes/48-notes.ily"

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
        \transpose e e {
            \new ChoirStaff \with { instrumentName = #"48" } % LBI_12a
            <<
                \new Staff ="up"
                <<
                    \clef treble \toneKeysig
                    \accidentalStyle forget
                    \new Voice = "Soprano" \sopMusic
                    \new Voice = "Alto" \altoMusic
                >>
                \new Staff ="down"
                <<
                    \clef bass \toneKeysig
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

}
