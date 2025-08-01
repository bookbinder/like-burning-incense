\version "2.24.0"

\include "/home/ryan/scores/like-burning-incense/lbi_defs_cantor.ily"
\include "/home/ryan/scores/like-burning-incense/offices/saintsAndSolemnities/1208_Immaculate_Conception/notes/1-Vespers-Mag-Ant.ily"
\include #(string-append "/home/ryan/scores/like-burning-incense/psalmtones/notes/" psalmtone "-notes.ily")


\score {
  \header {
      % piece = \markup \with-color "red" { \fontsize #1 #(string-append "Ant. " antiphon) }
      % opus = #(string-append "(" psalmtone ")")
      tagline = ##f
    }
  \transpose \master-from-pitch \master-to-pitch {
    \new Staff % \with { instrumentName = \psalmtone }
    <<
      \clef treble
      \antKeysig
      \accidentalStyle forget
      \new Voice = "Soprano" {
        \global
        \oneVoice
        \mark \markup {\small \psalmtone}
        \sopNotesAnt
        \transpose \frompitch \topitch {
          \small \sopranoShort
        }
      }
      \new Lyrics \lyricsto Soprano \text
    >>
  }  
  \layout {
    ragged-last = ##t
    % indent = 0.3\cm
    % short-indent = 0\cm
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}
