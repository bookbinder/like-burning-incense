\header {
    psalm_title = "Psalm 49 -- II"
    % subpsalm_title = ""
    % psalm_subsubtitle = "II"
}


sopMusic = {
    \global
    \voiceOne
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
}
altoMusic = {
    \global
    \voiceTwo
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
}

tenorMusic = {
    \global
    \voiceOne
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
}

bassMusic = {
    \global
    \voiceTwo
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

