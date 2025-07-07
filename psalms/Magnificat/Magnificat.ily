\header {
    psalm_title = "Magnificat"
    %psalm_subsubtitle = "Subsubtitle"
}

sopMusic = {
    \global
    \voiceOne
    \sopranoOneFlex
    \sopranoTwoFlex
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \mark "D.C."
}
altoMusic = {
    \global
    \voiceTwo
    \altoOneFlex
    \altoTwoFlex
    \altoOne
    \altoTwo
    \altoOne
    \altoTwo

}   
tenorMusic = {
    \global
    \voiceOne
    \tenorOneFlex
    \tenorTwoFlex
    \tenorOne
    \tenorTwo
    \tenorOne
    \tenorTwo

}
bassMusic = {
    \global
    \voiceTwo
    \bassOneFlex
    \bassTwoFlex
    \bassOne
    \bassTwo
    \bassOne
    \bassTwo

}

\score {        
    <<
        \transpose \master-from-pitch \master-to-pitch {
          \transpose \frompitch \topitch {
            \new ChoirStaff \with { instrumentName = \psalmtone }
            <<
                \new Staff ="up"
                   <<
                        \clef treble \toneKeysig
                        \accidentalStyle forget
                        \new Voice = "Soprano" \sopMusic
                        \new Voice = "Alto" \altoMusic
                        \new Lyrics \lyricsto Soprano \text
		        \new Lyrics \lyricsto Soprano \textB
	                %\new Lyrics \lyricsto Soprano \textC
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
      }
    >>
    
    \layout {
        indent = 0.5\in 
        \context { 
            \Staff 
            \remove Time_signature_engraver 
        } 

            
    } 
    
}

