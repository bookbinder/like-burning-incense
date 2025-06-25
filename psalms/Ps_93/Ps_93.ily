\header {
    psalm_title = "Psalm 93"
    psalm_subtitle = "Splendor of God the Creator"
}

sopMusic = {
    \global
    \voiceOne
    \sopranoOneFlex 
    \sopranoTwoFlex
    \sopranoOneFlex 
    \sopranoTwoFlex
    \sopranoOneFlex
    \sopranoTwo
    \sopranoOne
    % \mark \markup {"D.C."}
}
altoMusic = {
    \global
    \voiceTwo
    \altoOneFlex 
    \altoTwoFlex
    \altoOneFlex 
    \altoTwoFlex
    \altoOneFlex
    \altoTwo
    \altoOne
}
tenorMusic = {
    \global
    \voiceOne
    \tenorOneFlex 
    \tenorTwoFlex
    \tenorOneFlex 
    \tenorTwoFlex
    \tenorOneFlex
    \tenorTwo
    \tenorOne
}
bassMusic = {
    \global
    \voiceTwo
    \bassOneFlex 
    \bassTwoFlex
    \bassOneFlex 
    \bassTwoFlex
    \bassOneFlex
    \bassTwo
    \bassOne
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

