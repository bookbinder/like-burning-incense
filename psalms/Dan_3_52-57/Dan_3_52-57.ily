\header {
    psalm_title = "Canticle, Daniel 3:52-57"
    psalm_subtitle = "Let all creatures praise the Lord"
}


sopMusic = {
    \global
    \voiceOne
    \sopranoOne 
    \sopranoTwo
    \sopranoOne 
    \sopranoTwo
    \sopranoOneFlex
    \sopranoTwo
    \sopranoOne 
    \sopranoTwo
    \sopranoOne  
}
altoMusic = {
    \global
    \voiceTwo
    \altoOne 
    \altoTwo
    \altoOne 
    \altoTwo
    \altoOneFlex
    \altoTwo
    \altoOne 
    \altoTwo
    \altoOne

}

tenorMusic = {
    \global
    \voiceOne
    \tenorOne 
    \tenorTwo
    \tenorOne 
    \tenorTwo
    \tenorOneFlex
    \tenorTwo
    \tenorOne 
    \tenorTwo
    \tenorOne

}

bassMusic = {
    \global
    \voiceTwo
    \bassOne 
    \bassTwo
    \bassOne 
    \bassTwo
    \bassOneFlex
    \bassTwo
    \bassOne 
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
