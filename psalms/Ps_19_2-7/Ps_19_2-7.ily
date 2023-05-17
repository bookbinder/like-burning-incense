\header {
    psalm_title = "Psalm 19A"
    psalm_subtitle = "Praise of the Lord, Creator of all"
}


sopMusic = {
    \global
    \voiceOne
    \sopranoOne
    \sopranoTwo
    \sopranoOneFlex
    \sopranoTwoFlex
    \sopranoOneFlex
    \sopranoTwo
    \sopranoOne
}
altoMusic = {
    \global
    \voiceTwo
    \altoOne
    \altoTwo
    \altoOneFlex
    \altoTwoFlex
    \altoOneFlex
    \altoTwo
    \altoOne
}

tenorMusic = {
    \global
    \voiceOne
    \tenorOne
    \tenorTwo
    \tenorOneFlex
    \tenorTwoFlex
    \tenorOneFlex
    \tenorTwo
    \tenorOne
}

bassMusic = {
    \global
    \voiceTwo
    \bassOne
    \bassTwo
    \bassOneFlex
    \bassTwoFlex
    \bassOneFlex
    \bassTwo
    \bassOne
}

\score {        <<
    \transpose \frompitch \topitch {
        \new ChoirStaff \with { instrumentName = \psalmtone } %LBI_1A
        <<
            \new Staff ="up"
            <<
                \clef treble
                \accidentalStyle forget
                \new Voice = "Soprano" \sopMusic
                \new Voice = "Alto" \altoMusic
                \new Lyrics \lyricsto Soprano \text
                %\new Lyrics \lyricsto Soprano \textB
                %\new Lyrics \lyricsto Soprano \textC
            >>
            \new Staff ="down"
            <<
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

}

