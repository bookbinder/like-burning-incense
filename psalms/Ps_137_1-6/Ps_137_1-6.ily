\header {
    psalm_title = "Ps 137: 1-6"
    psalm_subtitle = "By the rivers of Babylon"
}

sopMusic = {
    \global
    \voiceOne
    \sopranoOneFlex 
    \sopranoTwo
    \sopranoOneFlex 
    \sopranoTwo
    \sopranoOneFlex 
    \sopranoTwo
    \sopranoOneFlex 
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
}
altoMusic = {
    \global
    \voiceTwo
    \altoOneFlex 
    \altoTwo
    \altoOneFlex 
    \altoTwo
    \altoOneFlex 
    \altoTwo
    \altoOneFlex 
    \altoTwo
    \altoOne
    \altoTwo
}
tenorMusic = {
    \global
    \voiceOne
    \tenorOneFlex 
    \tenorTwo
    \tenorOneFlex 
    \tenorTwo
    \tenorOneFlex 
    \tenorTwo
    \tenorOneFlex 
    \tenorTwo
    \tenorOne
    \tenorTwo
}
bassMusic = {
    \global
    \voiceTwo
    \bassOneFlex 
    \bassTwo
    \bassOneFlex 
    \bassTwo
    \bassOneFlex 
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

