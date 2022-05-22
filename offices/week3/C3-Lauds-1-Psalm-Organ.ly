\version "2.20.0"
\include "../lbi_defs.ily"

\include "../psalmtones/notes/"
psalmtone = # "09"

\header {
    title = "Psalm 85"
    subtitle = "Our salvation is near"
    %subsubtitle = "Subsubtitle"
}

\include "../psalmtexts/"

sopMusic = {
    \global
    \voiceOne
    \sopranoOneFlex
    \sopranoTwoFlex
    \sopranoOneFlex
    \sopranoTwoFlex
    \sopranoOneFlex
    \sopranoTwoFlex
    \sopranoOneFlex
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
}
altoMusic = {
    \global
    \voiceTwo
    \altoOneFlex
    \altoTwoFlex
    \altoOneFlex
    \altoTwoFlex
    \altoOneFlex
    \altoTwoFlex
    \altoOneFlex
    \altoOne
    \altoTwo
    \altoOne
    \altoTwo
    \altoOne
    \altoTwo
}
tenorMusic = {
    \global
    \voiceOne
    \tenorOneFlex
    \tenorTwoFlex
    \tenorOneFlex
    \tenorTwoFlex
    \tenorOneFlex
    \tenorTwoFlex
    \tenorOneFlex
    \tenorOne
    \tenorTwo
    \tenorOne
    \tenorTwo
    \tenorOne
    \tenorTwo
}
bassMusic = {
    \global
    \voiceTwo
    \bassOneFlex
    \bassTwoFlex
    \bassOneFlex
    \bassTwoFlex
    \bassOneFlex
    \bassTwoFlex
    \bassOneFlex
    \bassOne
    \bassTwo
    \bassOne
    \bassTwo
    \bassOne
    \bassTwo
}

\score {
    <<
        \transpose a gis {
            \new ChoirStaff \with { instrumentName = \psalmtone }
            <<
                \new Staff ="up"
                   <<
                        \clef treble
                        \accidentalStyle forget
                        \new Voice = "Soprano" \sopMusic
                        \new Voice = "Alto" \altoMusic
                        \new Lyrics \lyricsto Soprano \text
                        % \new Lyrics \lyricsto Soprano \textB
                        %\new Lyrics \lyricsto Soprano \textC
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


