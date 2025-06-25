\header {
    psalm_title = "Psalm 118"
    psalm_subtitle = "Song of joy for salvation"
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
    \sopranoOne 
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
    \altoOne 
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
    \tenorOne 
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
    \bassOne 
    \bassTwo
    \bassOne 
    \bassTwo
    \bassOne 
    \bassTwoFlex
}


\score {        
    <<
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
                    \new Lyrics \lyricsto Soprano \textB
                    \new Lyrics \lyricsto Soprano \textC
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

    \layout 
    { 
      ragged-last = ##t
      indent = 0.5\in
      #(layout-set-staff-size 15)
      \context 
      { 
        \Staff 
        \remove Time_signature_engraver 
      } 
      
    } 
    
}