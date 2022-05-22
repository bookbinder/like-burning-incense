\version "2.20.0"
\include "../lbi_defs.ily"

\include "../psalmtones/notes/"
psalmtone = # ""

\header {
    title = "Psalm 125"
    subtitle = "The Lord, guardian of his people"
    %subsubtitle = "Subsubtitle"
}

\include "../psalmtexts/"

sopMusic = {
    \global
    \voiceOne
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwoFlex
    \sopranoOne
    \sopranoTwo
}
altoMusic = {
    \global
    \voiceTwo
    \altoOne
    \altoTwo
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
    \tenorTwo
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
    \bassTwo
    \bassOne
    \bassTwo
    \bassOne
    \bassTwoFlex
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


