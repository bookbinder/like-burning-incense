\header {
    psalm_title = "Benedictus"
    %psalm_subtitle = ""
    %psalm_subsubtitle = "Subsubtitle"
}

sopMusic = {
    \global
    \voiceOne
    \sopranoOne 
    \sopranoTwo
    \sopranoOneFlex
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \mark "D.C."
}
altoMusic = {
    \global
    \voiceTwo
    \altoOne
    \altoTwo
    \altoOneFlex
    \altoTwo
    \altoOne
    \altoTwo
}  
tenorMusic = {
    \global
    \voiceOne
    \tenorOne
    \tenorTwo
    \tenorOneFlex
    \tenorTwo
    \tenorOne
    \tenorTwo
}
bassMusic = {
    \global
    \voiceTwo
    \bassOne
    \bassTwo
    \bassOneFlex
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
                   % \new Lyrics \lyricsto Soprano \textC
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
      % #(layout-set-staff-size 14)
        \context { 
            \Staff 
            \remove Time_signature_engraver 
        }
    }
}
