% #(set-global-staff-size 14)

\header {
    psalm_title = "Tobit_13_8-11,_13-15"
    psalm_subtitle = "Thanksgiving for the people's deliverance"
}

sopMusic = {
    \global
    \voiceOne
    \sopranoOne 
    \sopranoTwoFlex
    \sopranoOneFlex
    \sopranoTwoFlex
    \sopranoOne
    \sopranoTwoFlex
    \sopranoOneFlex
    \sopranoTwoFlex
    \mark \markup {"D.C."}
}
altoMusic = {
    \global
    \voiceTwo
    \altoOne 
    \altoTwoFlex
    \altoOneFlex
    \altoTwoFlex
    \altoOne
    \altoTwoFlex
    \altoOneFlex
    \altoTwoFlex
}
tenorMusic = {
    \global
    \voiceOne
    \tenorOne 
    \tenorTwoFlex
    \tenorOneFlex
    \tenorTwoFlex
    \tenorOne
    \tenorTwoFlex
    \tenorOneFlex
    \tenorTwoFlex
}
bassMusic = {
    \global
    \voiceTwo
    \bassOne 
    \bassTwoFlex
    \bassOneFlex
    \bassTwoFlex
    \bassOne
    \bassTwoFlex
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
        \context {
            \Staff
            \remove Time_signature_engraver
        }
    }
}

