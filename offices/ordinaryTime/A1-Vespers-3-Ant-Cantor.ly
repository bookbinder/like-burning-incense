\version "2.20.0"

\include "../../lbi_defs_cantor.ily"
\include "notes/A1-Vespers-3-Ant.ily"
% \include #(string-append "../../psalmtones/notes/" psalmtone "-notes.ily")


\score {
    \header {
      % piece = \markup \with-color "red" { \bold \fontsize #1 #(string-append "Ant. " antiphon) }
      % opus = #(string-append "(" psalmtone ")")
      tagline = ##f
    }
    
    \transpose \master-from-pitch \master-to-pitch {
    \new Staff
      
    <<
        \midi_instrument
        \clef treble \antKeysig
        \accidentalStyle forget
        \new Voice = "Soprano" { 
            \relative e' {
                \global	% will be populated by an include file
                    % in the cantor/organ scores called lbi_defs
                \keysig
                \oneVoice
                g4( fis8) g e d4 
                \hideNotes d16 \unHideNotes   %so that I can align the * better
                 g4 a8 g a b b4 \bar "'"
                d8 b \bar "" a[ g] g4 \bar "||"

                \small
                r8 g8 a[ b] a4 a \bar "|" g\breve fis8 a\breve b4 \bar "||"
                g8 g e d4 \bar "|" g\breve fis8 a\breve b4 \bar "||"
                r8 b8 b[ a] a g e g[ a] a[ g] g4 \bar "||"}
                \addlyrics { 
                \set includeGraceNotes = ##t
                All power is yours, " * "
                Lord God, our might -- y King, al -- le -- lu -- ia.

                Al -- le -- lu -- ia _ _ _ _ Al -- le -- lu -- ia
                 _ _ _ _ Al -- le -- lu -- ia, Al -- le -- lu -- ia}
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
}
