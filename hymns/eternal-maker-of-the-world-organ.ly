\version "2.24.3"

\include "/home/ryan/scores/like-burning-incense/hymns/notes/melody-1.ily"
\include "/home/ryan/scores/like-burning-incense/hymns/lyrics/o-splendor-of-the-fathers-light.ily"
\include "/home/ryan/scores/like-burning-incense/lbi_defs.ily"


\score {
  <<
    \transpose \master-from-pitch \master-to-pitch {
      \new ChoirStaff
      <<
        \new Staff ="up"
        <<
          \clef treble \melodyKeysig
          \accidentalStyle forget
          \new Voice = "Soprano" { \voiceOne \global \omit Stem \sopNotes }
          \new Voice = "Alto" { \voiceTwo \global \omit Stem \altoNotes }
          \new Lyrics \lyricsto Soprano \verseone
          \new Lyrics \lyricsto Soprano \versetwo
          \new Lyrics \lyricsto Soprano \versethree
          \new Lyrics \lyricsto Soprano \versefour
        >>
        \new Staff ="down"
        <<
          \clef bass \melodyKeysig
          \accidentalStyle forget
          \new Voice = "Tenor" { \voiceThree \global \omit Stem \tenorNotes }
          \new Voice = "Bass" { \voiceFour \global \omit Stem \bassNotes }
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