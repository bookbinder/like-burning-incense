\version "2.24.3"

\include "/home/ryan/scores/like-burning-incense/lbi_defs_cantor.ily"
\include "/home/ryan/scores/like-burning-incense/offices/ordinaryTime/notes/A1-Vespers-3-Ant.ily"
\include #(string-append "/home/ryan/scores/like-burning-incense/psalmtones/notes/" "68" "-notes.ily")


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
        \clef treble
        \key g \major
        \accidentalStyle forget
        \new Voice = "Soprano" { 
            \relative e' {
                \global	% will be populated by an include file
                    % in the cantor/organ scores called lbi_defs
                \oneVoice
                r8 g8 a[ b] a4 a \bar "|"
                g\breve fis8 a\breve b4 \bar "||" \break
                g8 g e d4 \bar "|"
                g\breve fis8 a\breve b4 \bar "||" \break
                r8 b8 b[ a] a g e g[ a] a[ g] g4 \bar "||"}
            \addlyrics { 
              \set includeGraceNotes = ##t
              Al -- le -- lu -- ia _ _ _ _ \markup { \bold Al } -- \markup { \bold le } -- \markup { \bold lu } -- \markup { \bold ia }
              _ _ _ _ \markup { \bold Al } -- \markup { \bold le } -- \markup { \bold lu } -- \markup { \bold ia, } \markup { \bold Al } -- \markup { \bold le } -- \markup { \bold lu } -- \markup { \bold ia }}
          }
        
      >>

  }
    \layout {
      ragged-last = ##t
      line-width = 3.5\in
      \context { 
        \Staff 
        \remove Time_signature_engraver 
      } 
      
    }
  }
