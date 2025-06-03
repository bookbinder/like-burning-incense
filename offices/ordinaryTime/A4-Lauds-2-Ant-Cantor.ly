\version "2.20.0"

\include "../../lbi_defs_cantor.ily"
\include "/home/ryan/scores/like-burning-incense/offices/ordinaryTime/notes/A4-Lauds-2-Ant.ily"
\include #(string-append "../../psalmtones/notes/" psalmtone "-notes.ily")


\score {
    \header {
      % % piece = \markup \with-color "red" { \bold \fontsize #1 #(string-append "Ant. " antiphon) }
      % % opus = #(string-append "(" psalmtone ")")
      tagline = ##f
    }
    
    \transpose \master-from-pitch \master-to-pitch {
    \new Staff
      
    <<
        \midi_instrument
        \clef treble \antKeysig
        \accidentalStyle forget
        \new Voice = "Soprano" { 
            \oneVoice \autoLineBreaksOn \global 
            \mark \markup { \small \psalmtone }
            \sopNotesAnt \autoLineBreaksOff
            \allowBreak 
            \transpose \frompitch \topitch { 
                \small \sopranoShort 
            }
        }
        \new Lyrics \lyricsto Soprano { \override LyricText.font-size = \lyricsize
                                        \text }
    >>

    }
    \layout {
      ragged-last = ##t 
        \context { 
            \Staff 
            \remove Time_signature_engraver 
        } 

    }
}

