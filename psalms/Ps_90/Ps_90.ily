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
    \sopranoTwoFlex
    \sopranoOne
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
    \altoTwoFlex
    \altoOne 
    \altoTwo
    \altoTwoFlex
    \altoOne
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
    \tenorTwoFlex
    \tenorOne 
    \tenorTwo
    \tenorTwoFlex
    \tenorOne
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
    \bassTwoFlex
    \bassOne 
    \bassTwo
    \bassTwoFlex
    \bassOne
    \bassTwo
    \bassOne 
    \bassTwo
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
                        \new Lyrics \lyricsto Soprano \textB
                        % \new Lyrics \lyricsto Soprano \textC
                    >>
                \new Staff ="down"
                    <<
                        \clef bass
                        \accidentalStyle forget
                        \new Voice = "Tenor" \tenorMusic
                        \new Voice = "Bass" \bassMusic
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

