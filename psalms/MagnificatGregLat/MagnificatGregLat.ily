\header {
    psalm_title = "Magnificat"
    %psalm_subsubtitle = "Subsubtitle"
}

sopMusic = {
    \global
    \voiceOne
    \sopranoOneIntone \sopranoOneMag
    \sopranoOneIntone \sopranoOne
    \sopranoOneIntone \sopranoOne
    \sopranoOneIntone \sopranoOne
    \sopranoOneIntone \sopranoOne
    \sopranoOneIntone \sopranoOne
    \sopranoOneIntone \sopranoOne
    \sopranoOneIntone \sopranoOne
    \sopranoOneIntone \sopranoOne
    \sopranoOneIntone \sopranoOne
    \sopranoOneIntone \sopranoOne
    \sopranoOneIntone \sopranoOne
}
altoMusic = {
    \global
    \voiceTwo
    \altoOneIntone \altoOneMag
    \altoOneIntone \altoOne
    \altoOneIntone \altoOne
    \altoOneIntone \altoOne
    \altoOneIntone \altoOne
    \altoOneIntone \altoOne
    \altoOneIntone \altoOne
    \altoOneIntone \altoOne
    \altoOneIntone \altoOne
    \altoOneIntone \altoOne
    \altoOneIntone \altoOne
    \altoOneIntone \altoOne
  }   
tenorMusic = {
    \global
    \voiceOne
    \tenorOneIntone \tenorOneMag
    \tenorOneIntone \tenorOne
    \tenorOneIntone \tenorOne
    \tenorOneIntone \tenorOne
    \tenorOneIntone \tenorOne
    \tenorOneIntone \tenorOne
    \tenorOneIntone \tenorOne
    \tenorOneIntone \tenorOne
    \tenorOneIntone \tenorOne
    \tenorOneIntone \tenorOne
    \tenorOneIntone \tenorOne
    \tenorOneIntone \tenorOne
  }
bassMusic = {
    \global
    \voiceTwo
    \bassOneIntone \bassOneMag
    \bassOneIntone \bassOne
    \bassOneIntone \bassOne
    \bassOneIntone \bassOne
    \bassOneIntone \bassOne
    \bassOneIntone \bassOne
    \bassOneIntone \bassOne
    \bassOneIntone \bassOne
    \bassOneIntone \bassOne
    \bassOneIntone \bassOne
    \bassOneIntone \bassOne
    \bassOneIntone \bassOne
  }
pedalMusic = {
  \global
  \voiceTwo
    \pedalOneIntone \pedalOneMag
    \pedalOneIntone \pedalOne
    \pedalOneIntone \pedalOne
    \pedalOneIntone \pedalOne
    \pedalOneIntone \pedalOne
    \pedalOneIntone \pedalOne
    \pedalOneIntone \pedalOne
    \pedalOneIntone \pedalOne
    \pedalOneIntone \pedalOne
    \pedalOneIntone \pedalOne
    \pedalOneIntone \pedalOne
    \pedalOneIntone \pedalOne

}

\score {        
    <<
        \transpose \frompitch \topitch {
            \new ChoirStaff \with { instrumentName = \psalmtone }
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
                        \new Voice = "Pedal" \pedalMusic
                    >>
            >>
        }
    >>
    
    \layout { 
        \context { 
            \Staff 
            \remove Time_signature_engraver 
        } 

            
    } 
    
}

