\version "2.20.0"
\include "../lbi_defs.ily"

\include "../psalmtones/notes/"
psalmtone = # ""

\header {
    title = "Psalm 143:1-11"
    subtitle = "Prayer in distress"
    %subsubtitle = "Subsubtitle"
}

\include "../psalmtexts/Ps_143_1-11/"

sopMusic = {
    \global
    \voiceOne
    \sopranoOne
}
altoMusic = {
    \global
    \voiceTwo
    \altoOne
}
tenorMusic = {
    \global
    \voiceOne
    \tenorOne
}
bassMusic = {
    \global
    \voiceTwo
    \bassOne
}

\score {
    <<
        \transpose a a {
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

