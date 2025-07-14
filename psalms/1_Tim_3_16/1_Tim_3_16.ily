\header {
    psalm_title = "See 1 Timothy 3:16"
    psalm_subtitle = "The mystery and glory of Christ"
}

sopMusicResp = \relative g' {
  g8[ a] g g[ d'] c b a[ g] g4 \bar "||"
}
altoMusicResp = \relative e' {
  e4. f2 d
}
tenorMusicResp = \relative c' {
  c4.~ c2~ c4 b
}
bassMusicResp = \relative c {
  c4. d2 g
}

sopMusic = {
    \global
    \voiceOne
    \sopMusicResp
    \sopranoOne
    \sopMusicResp
    \sopranoTwo
    \sopMusicResp
    \sopranoOne
    \sopMusicResp
    \sopranoTwo
    \sopMusicResp
    \sopranoOne
    \sopMusicResp
}
altoMusic = {
    \global
    \voiceTwo
    \altoMusicResp
    \altoOne
    \altoMusicResp
    \altoTwo
    \altoMusicResp
    \altoOne
    \altoMusicResp
    \altoTwo
    \altoMusicResp
    \altoOne
    \altoMusicResp
}
tenorMusic = {
    \global
    \voiceOne
    \tenorMusicResp
    \tenorOne
    \tenorMusicResp
    \tenorTwo
    \tenorMusicResp
    \tenorOne
    \tenorMusicResp
    \tenorTwo
    \tenorMusicResp
    \tenorOne
    \tenorMusicResp
}
bassMusic = {
    \global
    \voiceTwo
    \bassMusicResp
    \bassOne
    \bassMusicResp
    \bassTwo
    \bassMusicResp
    \bassOne
    \bassMusicResp
    \bassTwo
    \bassMusicResp
    \bassOne
    \bassMusicResp
}
% response = \lyricmode { Praise the Lord, all you na -- tions. }

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
