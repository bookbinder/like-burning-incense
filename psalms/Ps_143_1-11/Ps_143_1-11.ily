\header {
    psalm_title = "Ps 143:1-11"
    psalm_subtitle = "Prayer in distress"
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
    \sopranoOneFlex
    \sopranoTwo
    \sopranoOne 
    \sopranoTwo
    \mark \markup {"D.C."}
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
    \altoOneFlex
    \altoTwo
    \altoOne 
    \altoTwo
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
    \tenorOneFlex
    \tenorTwo
    \tenorOne 
    \tenorTwo
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
        \context {
            \Staff
            \remove Time_signature_engraver
        }
    }
}

