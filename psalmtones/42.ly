\version "2.18.2"
\include "/home/ryan/scores/like-burning-incense/lbi_defs.ily"
\include "notes/42-notes.ily"

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
        \transpose a a {



            \new ChoirStaff \with { instrumentName = #"42" } % LBI_7a
            <<
                \new Staff ="up"
                <<
                    \set Staff.midiInstrument = #"drawbar organ"
                    \clef treble \toneKeysig
                    \accidentalStyle forget
                    \new Voice = "Soprano" \sopMusic
                    \new Voice = "Alto" \altoMusic
                >>
                \new Staff ="down"
                <<
                    \set Staff.midiInstrument = #"drawbar organ"
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
    \midi {}
}
