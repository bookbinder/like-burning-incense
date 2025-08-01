\header {
    psalm_title = "Magnificat"
    %psalm_subsubtitle = "Subsubtitle"
}

sopMusic = {
    \global
    \voiceOne
    \sopranoOneIntone \sopranoOneFlex
    \sopranoOneIntone \sopranoOneFlex
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
    \altoOneIntone \altoOneFlex
    \altoOneIntone \altoOneFlex
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
    \tenorOneIntone \tenorOneFlex
    \tenorOneIntone \tenorOneFlex
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
    \bassOneIntone \bassOneFlex
    \bassOneIntone \bassOneFlex
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
  \pedalOneIntone \pedalOneFlex
  \pedalOneIntone \pedalOneFlex
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
		        %\new Lyrics \lyricsto Soprano \textB
	                %\new Lyrics \lyricsto Soprano \textC
                    >>
                \new Staff ="down"
                    <<
                        \clef bass \toneKeysig
                        \accidentalStyle forget
                        \new Voice = "Tenor" \tenorMusic
                        \new Voice = "Bass" \bassMusic
                        \new Voice = "Pedal" \pedalMusic
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

