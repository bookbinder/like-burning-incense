\header {
    psalm_title = "Ps 108"
    psalm_subtitle = "Praise of God and a plea for help"
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

