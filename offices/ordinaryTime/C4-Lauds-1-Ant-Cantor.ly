\version "2.20.0"

\include "../../lbi_defs_cantor.ily"
\include "notes/C4-Lauds-1-Ant.ily"
\include #(string-append "../../psalmtones/notes/" psalmtone "-notes.ily")


\score {
    \header {
      piece = \markup \with-color "red" { \fontsize #1 #(string-append "Ant. " antiphon) }
      opus = #(string-append "(" psalmtone ")")
      tagline = ##f
    }

    \new Staff
      
    <<
        \midi_instrument
        \clef treble
        \accidentalStyle forget
        \new Voice = "Soprano" {
            \oneVoice \autoLineBreaksOn \sopNotesAnt \autoLineBreaksOff
            \allowBreak
            \transpose \frompitch \topitch {
                \small \sopranoShort
            }
        }
        \new Lyrics \lyricsto Soprano \text
    >>

    \layout {
        \context {
            \Staff
            \remove Time_signature_engraver
        }
    }
}
