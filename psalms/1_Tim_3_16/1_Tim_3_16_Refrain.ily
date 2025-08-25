\version "2.24.3"

\include "/home/ryan/scores/like-burning-incense/lbi_defs_cantor.ily"
% \include "/home/ryan/scores/like-burning-incense/offices/ordinaryTime/notes/A1-Vespers-3-Ant.ily"
% \include #(string-append "/home/ryan/scores/like-burning-incense/psalmtones/notes/" "68" "-notes.ily")


\header {
    psalm_title = "See 1 Timothy 3:16"
    psalm_subtitle = "The mystery and glory of Christ"
}

sopMusicResp = {
  g8[ a] g g[ d'] c b a[ g] g4
}
altoMusicResp = {
  e4. f2 d
}
tenorMusicResp = {
  c4.~ c2~ c4 b
}
bassMusicResp = {
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
    \altoranoOne
    \altoMusicResp
    \altoranoTwo
    \altoMusicResp
    \altoranoOne
    \altoMusicResp
    \altoranoTwo
    \altoMusicResp
    \altoranoOne
    \altoMusicResp
}
tenorMusic = {
    \global
    \voiceOne
    \tenorMusicResp
    \tenorranoOne
    \tenorMusicResp
    \tenorranoTwo
    \tenorMusicResp
    \tenorranoOne
    \tenorMusicResp
    \tenorranoTwo
    \tenorMusicResp
    \tenorranoOne
    \tenorMusicResp
}
bassMusic = {
    \global
    \voiceTwo
    \bassMusicResp
    \bassranoOne
    \bassMusicResp
    \bassranoTwo
    \bassMusicResp
    \bassranoOne
    \bassMusicResp
    \bassranoTwo
    \bassMusicResp
    \bassranoOne
    \bassMusicResp
}
response = \lyricmode { Praise the Lord, all you na -- tions. }

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
                        \new Lyrics \lyricsto Soprano \response
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
