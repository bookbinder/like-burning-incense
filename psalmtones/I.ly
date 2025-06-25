\version "2.18.2"
\include "/home/ryan/scores/like-burning-incense/lbi_defs.ily"
\include "notes/I.ily"


sopMusic = {
    \global
    \voiceOne
    \sopranoOneFlex
}
altoMusic = {
    \global
    \voiceTwo
    \altoOneFlex
}
tenorMusic = {
    \global
    \voiceOne
    \tenorOneFlex
}
bassMusic = {
    \global
    \voiceTwo
    \bassOneFlex
}

\score {

    \header {
        %piece = \markup { \fontsize #2 \bold "LBI_1A" }
    }
    <<
        \transpose a b {
            \new ChoirStaff \with { instrumentName = #"I" }
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
