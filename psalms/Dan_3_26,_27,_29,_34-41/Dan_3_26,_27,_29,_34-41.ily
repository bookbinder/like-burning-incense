\header {
    psalm_title = "Dan 3:26, 27, 29, 34-41"
    psalm_subtitle = "Azariah's prayer in the furnace"
}

sopMusic = {
    \global
    \voiceOne
    \sopranoOneFlex 
    \sopranoTwoFlex
    \sopranoOneFlex 
    \sopranoTwo
    \sopranoOneFlex 
    \sopranoTwoFlex
    \mark \markup {"D.C."}
}
altoMusic = {
    \global
    \voiceTwo
    \altoOneFlex 
    \altoTwoFlex
    \altoOneFlex 
    \altoTwo
    \altoOneFlex 
    \altoTwoFlex
}
tenorMusic = {
    \global
    \voiceOne
    \tenorOneFlex 
    \tenorTwoFlex
    \tenorOneFlex 
    \tenorTwo
    \tenorOneFlex 
    \tenorTwoFlex
}
bassMusic = {
    \global
    \voiceTwo
    \bassOneFlex 
    \bassTwoFlex
    \bassOneFlex 
    \bassTwo
    \bassOneFlex 
    \bassTwoFlex
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

    \layout {
        indent = 0.5\in
        \context {
            \Staff
            \remove Time_signature_engraver
        }
    }
}

