\version "2.24.3"

\include "/home/ryan/scores/like-burning-incense/hymns/notes/aeterne-rerum-conditor-dunstan.ily"
\include "/home/ryan/scores/like-burning-incense/hymns/lyrics/eternal-maker-of-the-world.ily"
\include "/home/ryan/scores/like-burning-incense/lbi_defs.ily"

%% update

\score {
  <<
    \transpose \master-from-pitch \master-to-pitch {
      \new ChoirStaff
      <<
        \new Staff ="up"
        <<
          \clef treble \melodyKeysig
          \accidentalStyle forget
          \new Voice = "Soprano" { \voiceOne \global \sopNotes }
          \new Voice = "Alto" { \voiceTwo \global \altoNotes }
          \new Lyrics \lyricsto Soprano \verseone
          \new Lyrics \lyricsto Soprano \versetwo
          \new Lyrics \lyricsto Soprano \versethree
          \new Lyrics \lyricsto Soprano \versefour
          \new Lyrics \lyricsto Soprano \versefive
          \new Lyrics \lyricsto Soprano \versesix
          \new Lyrics \lyricsto Soprano \verseseven
        >>
        \new Staff ="down"
        <<
          \clef bass \melodyKeysig
          \accidentalStyle forget
          \new Voice = "Tenor" { \voiceThree \global  \tenorNotes }
          \new Voice = "Bass" { \voiceFour \global \bassNotes }
        >>
      >>
    }
  >>
  
  \layout {
    #(layout-set-staff-size 18)
    \context {
      \Staff
      \remove Time_signature_engraver
    }
    \context {
      \Lyrics
      \override LyricSpace.minimum-distance = #2.0
    }
  }
}