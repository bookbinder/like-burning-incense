\version "2.24.0"

\include "/home/ryan/scores/like-burning-incense/lbi_defs_op.ily"
\include "notes/Ben1-Ant.ily"
\include #(string-append "/home/ryan/scores/like-burning-incense/psalmtones/notes/" psalmtone "-notes.ily")

global = { \cadenzaOn \autoBeamOff }

\score {
  \transpose \master-from-pitch \master-to-pitch
    <<
       \new ChoirStaff \with {
           instrumentName = \markup {
               \center-column {
                     \bold { \line { Ant. \antiphon } }
                     \concat { (#psalmtone) } }
           }
       }

       <<
           \new Staff = "up"
           <<
               \clef treble
               \accidentalStyle forget
               \new Voice = "Soprano" { \voiceOne \sopNotesAnt }
               \new Voice = "Alto" { \voiceTwo \altoNotesAnt }
               \new Lyrics \lyricsto Soprano \text
           >>
           \new Staff = "down"
           <<
               \clef bass
               \accidentalStyle forget
               \new Voice = "Tenor" { \voiceOne \tenorNotesAnt }
               \new Voice = "Bass" { \voiceTwo \bassNotesAnt  }
           >>
       >>
    >>
    \layout {
        ragged-last = ##t
        \context {
            \Staff
            \remove Time_signature_engraver
        }
    }
}

\include "/home/ryan/scores/like-burning-incense/psalmtones/75.ly"

% \score {
%   \transpose \master-from-pitch \master-to-pitch
%     <<
%        \new ChoirStaff 

%        <<
%            \new Staff = "up"
%            <<
%                \clef treble
%                \accidentalStyle forget
%                \new Voice = "Soprano" {                
%                  \voiceOne
%                  \sopranoOneFlex
%                  \sopranoTwoFlex }
%                \new Voice = "Alto" {
%                  \voiceTwo
%                  \altoOneFlex
%                  \altoTwoFlex }
%            >>
%            \new Staff = "down"
%            <<
%                \clef bass
%                \accidentalStyle forget
%                \new Voice = "Tenor" {
%                  \voiceOne
%                  \tenorOneFlex
%                  \tenorTwoFlex }
%                \new Voice = "Bass" {
%                  \voiceTwo
%                  \bassOneFlex
%                  \bassTwoFlex }
%            >>
%        >>
%     >>

%     \layout {
%         ragged-last = ##t
%         \context {
%             \Staff
%             \remove Time_signature_engraver
%         }
%     }
% }
