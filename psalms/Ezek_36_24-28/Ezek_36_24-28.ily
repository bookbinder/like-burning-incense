\header {
    psalm_title = "Ezek 36:24-28"
    psalm_subtitle = "The Lord will renew his people"
}

sopMusic = {
    \global
    \voiceOne
    \sopranoOneFlex
    \sopranoTwoFlex
    \sopranoOne 
    \sopranoTwo
    \sopranoOneFlex
    \sopranoTwoFlex
    \sopranoOne 
    \sopranoTwo
}
altoMusic = {
    \global
    \voiceTwo
    \altoOneFlex
    \altoTwoFlex
    \altoOne 
    \altoTwo
    \altoOneFlex
    \altoTwoFlex
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
    \tenorOneFlex
    \tenorTwoFlex
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
    \bassOneFlex
    \bassTwoFlex
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
                        % \new Lyrics \lyricsto Soprano \textB
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

