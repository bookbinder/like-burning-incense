\header {
    psalm_title = "Psalm 72 -- I"
    psalm_subtitle = "The Messiah's royal power"
    % psalm_subsubtitle = "I"
}


sopMusic = {
    \global
    \voiceOne
    \sopranoOne
    \sopranoTwo    
    \sopranoOne
    \sopranoTwoFlex
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
}
altoMusic = {
    \global
    \voiceTwo
    \altoOne
    \altoTwo    
    \altoOne
    \altoTwoFlex
    \altoOne
    \altoTwo
    \altoOne
    \altoTwo
    \altoOne
    \altoTwo
    \altoOne
    \altoTwo
    \altoOne
    \altoTwo
}

tenorMusic = {
    \global
    \voiceOne
    \tenorOne
    \tenorTwo    
    \tenorOne
    \tenorTwoFlex
    \tenorOne
    \tenorTwo
    \tenorOne
    \tenorTwo
    \tenorOne
    \tenorTwo
    \tenorOne
    \tenorTwo
    \tenorOne
    \tenorTwo
}

bassMusic = {
    \global
    \voiceTwo
    \bassOne
    \bassTwo    
    \bassOne
    \bassTwoFlex
    \bassOne
    \bassTwo
    \bassOne
    \bassTwo
    \bassOne
    \bassTwo
    \bassOne
    \bassTwo
    \bassOne
    \bassTwo

}

\score {        <<
    \transpose \master-from-pitch \master-to-pitch {
          \transpose \frompitch \topitch {
        \new ChoirStaff \with { instrumentName = \psalmtone } %LBI_1A
        <<
            \new Staff ="up"
            <<
                \clef treble \toneKeysig
                \accidentalStyle forget
                \new Voice = "Soprano" \sopMusic
                \new Voice = "Alto" \altoMusic
                \new Lyrics \lyricsto Soprano \text
                %\new Lyrics \lyricsto Soprano \textB
                %\new Lyrics \lyricsto Soprano \textC
            >>
            \new Staff ="down"
            <<
                \clef bass \toneKeysig
                \accidentalStyle forget
                \new Voice = "Tenor" \tenorMusic
                \new Voice = "Bass" \bassMusic
            >>
        
    >> }}
>>

\layout {
        indent = 0.5\in 
    ragged-last = ##t
    \context 
    { 
        \Staff 
        \remove Time_signature_engraver 
    } 


} 

}

