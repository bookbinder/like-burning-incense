\version "2.18.2"
\include "/home/ryan/scores/like-burning-incense/lbi_defs.ily"
\include "notes/21-notes.ily"

sopMusic = {
    \global
    \voiceOne
    \sopranoOneFlex
    \sopranoTwoFlex
}
altoMusic = {
    \global
    \voiceTwo
    \altoOneFlex
    \altoTwoFlex
}
tenorMusic = {
    \global
    \voiceOne
    \tenorOneFlex
    \tenorTwoFlex
}
bassMusic = {
    \global
    \voiceTwo
    \bassOneFlex
    \bassTwoFlex
}

\score {

    \header {
        %piece = \markup { \fontsize #2 \bold "LBI_3a" }
    }
    <<
        \transpose e e {



            \new ChoirStaff \with { instrumentName = #"21" } % LBI_9C
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
