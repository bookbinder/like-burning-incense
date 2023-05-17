\header {
    psalm_title = "Psalm 115"
    psalm_subtitle = "Praise of the true God"
}


sopMusic = {
    \global
    \voiceOne
    \sopranoOne 
    \sopranoTwo
    \sopranoOne 
    \sopranoTwo
    \sopranoOne 
    \sopranoTwo
    \sopranoOneFlex 
    \sopranoTwo
    \sopranoOne 
    \sopranoTwo
    \sopranoOne
    \sopranoTwoFlex
    \mark "D.C."
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
    \altoOneFlex 
    \altoTwo
    \altoOne 
    \altoTwo
    \altoOne
    \altoTwoFlex
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
    \tenorOneFlex 
    \tenorTwo
    \tenorOne 
    \tenorTwo
    \tenorOne
    \tenorTwoFlex
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
    \bassOneFlex 
    \bassTwo
    \bassOne 
    \bassTwo
    \bassOne
    \bassTwoFlex
}

\score {        
    <<
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
                \new Lyrics \lyricsto Soprano \textB
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

