\header {
    psalm_title = "Psalm 90"
    psalm_subtitle = "May we live in the radiance of God"
}

sopMusic = {
    \global
    \voiceOne
    \sopranoOne 
    \sopranoTwoFlex
    \sopranoOne 
    \sopranoTwoFlex
    \sopranoOne 
    \sopranoTwo
    \sopranoOne 
    \sopranoTwoFlex
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
    \altoTwoFlex
    \altoOne 
    \altoTwo
    \altoOne 
    \altoTwoFlex
    \altoOne
    \altoTwo
}
tenorMusic = {
    \global
    \voiceOne
    \tenorOne 
    \tenorTwoFlex
    \tenorOne 
    \tenorTwoFlex
    \tenorOne 
    \tenorTwo
    \tenorOne 
    \tenorTwoFlex
    \tenorOne
    \tenorTwo
}
bassMusic = {
    \global
    \voiceTwo
    \bassOne 
    \bassTwoFlex
    \bassOne 
    \bassTwoFlex
    \bassOne 
    \bassTwo
    \bassOne 
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
      #(layout-set-staff-size 15)
        \context {
            \Staff
            \remove Time_signature_engraver
        }
    }
}

