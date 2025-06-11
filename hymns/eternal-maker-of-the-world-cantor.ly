\version "2.24.3"

\include "/home/ryan/scores/like-burning-incense/hymns/notes/melody-1.ily"
\include "/home/ryan/scores/like-burning-incense/hymns/lyrics/o-splendor-of-the-fathers-light.ily"
\include "/home/ryan/scores/like-burning-incense/lbi_defs.ily"

\score {
    <<
      \transpose \master-from-pitch \master-to-pitch {
        \new Staff ="up"
        <<
          \clef treble \melodyKeysig
          \accidentalStyle forget
          \new Voice = "Soprano" { \oneVoice \global \omit Stem \sopNotes }
          \new Lyrics \lyricsto Soprano \verseone
          \new Lyrics \lyricsto Soprano \versetwo
          \new Lyrics \lyricsto Soprano \versethree
          \new Lyrics \lyricsto Soprano \versefour
          \new Lyrics \lyricsto Soprano \versefive
          \new Lyrics \lyricsto Soprano \versesix
          \new Lyrics \lyricsto Soprano \verseseven
          
        >>
      }
    >>
  }


\layout {
  ragged-last = ##t
  \context {
    \Staff
    \remove Time_signature_engraver
  }
}