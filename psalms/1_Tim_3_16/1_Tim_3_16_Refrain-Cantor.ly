\version "2.24.3"

\include "/home/ryan/scores/like-burning-incense/lbi_defs_cantor.ily"

\score {
  <<
    \relative g' {
      \clef treble
      \key c \major
      \global
      \oneVoice
      g8[ a] g g[ d'] c b a[ g] g4 \bar "||"}
    \addlyrics { Praise the Lord, all you na -- tions. }
  >>
  
  \layout {
    indent = 0\in
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}
