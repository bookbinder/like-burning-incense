\version "2.18.2"
\include "/home/ryan/scores/like-burning-incense/lbi_defs.ily"
\include "notes/VIIIC-notes.ily"


sopMusic = {
    \global
    \voiceOne
    \sopranoIntone
    \sopranoFlex
}
altoMusic = {
    \global
    \voiceTwo
    \altoIntone
    \altoFlex
}
tenorMusic = {
    \global
    \voiceOne
    \tenorIntone
    \tenorFlex
}
bassMusic = {
    \global
    \voiceTwo
    \bassIntone
    \bassFlex
}

\score {

    \header {
        %piece = \markup { \fontsize #2 \bold "LBI_1A" }
    }
    <<
        \transpose gis g {
            \new ChoirStaff \with { instrumentName = #"VIIIC" }
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
