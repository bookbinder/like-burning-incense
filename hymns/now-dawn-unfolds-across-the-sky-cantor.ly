\version "2.24.3"

\include "/home/ryan/scores/like-burning-incense/hymns/notes/melody-1.ily"
\include "/home/ryan/scores/like-burning-incense/hymns/lyrics/now-dawn-unfolds-across-the-sky.ily"
\include "/home/ryan/scores/like-burning-incense/lbi_defs_cantor.ily"

% #(set-default-paper-size "a5")
% #(set-global-staff-size 22)

% \header {
%   title = "Now Dawn Unfolds across the Sky"
%   composer = \markup { Music: Mode I, melody 1; \italic Liber \italic Hymnarius, Solesmes, 1983 }
%   % piece = "Piece"
%   opus = \markup { Text: \italic Aurora \italic iam \italic spargit \italic polum, 7-8th c., © 2023 ICEL. }
% }

\score {
  <<
    \transpose \master-from-pitch \master-to-pitch {
      \new Staff ="up"
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
      >>
    }
  >>
  
  \layout {
    ragged-last = ##t
    % line-width = 4.5\in
    % indent = 0\in
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}
%%
%%
