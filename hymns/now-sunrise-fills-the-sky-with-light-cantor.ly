\version "2.24.3"

\include "/home/ryan/scores/like-burning-incense/hymns/notes/melody-70.ily"
\include "/home/ryan/scores/like-burning-incense/hymns/lyrics/now-sunrise-fills-the-sky-with-light.ily"
\include "/home/ryan/scores/like-burning-incense/lbi_defs_cantor.ily"

\score {
  <<
    \transpose \master-from-pitch \master-to-pitch {
      \new Staff = "up"
      
      <<
        \clef treble \melodyKeysig
        \accidentalStyle forget
        \new Voice = "Soprano"
        \with { \remove "Fingering_engraver" \remove "New_fingering_engraver" }
        { \oneVoice \global \omit Stem \sopNotes }
        \new Lyrics \lyricsto Soprano \verseone
        \new Lyrics \lyricsto Soprano \versetwo
        \new Lyrics \lyricsto Soprano \versethree
        \new Lyrics \lyricsto Soprano \versefour
        % \new Lyrics \lyricsto Soprano \versefive
      >>
    }
  >>
  
  \layout {
    ragged-last = ##t
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}
%%
%%
