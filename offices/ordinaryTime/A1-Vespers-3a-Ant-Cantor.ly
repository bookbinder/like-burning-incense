\version "2.24.3"

\include "/home/ryan/scores/like-burning-incense/lbi_defs_cantor.ily"
\include "/home/ryan/scores/like-burning-incense/offices/ordinaryTime/notes/A1-Vespers-3-Ant.ily"
\include #(string-append "../../psalmtones/notes/" "68" "-notes.ily")


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
                \allowBreak r8
                \allowBreak g8
                \allowBreak a[ b]
                \allowBreak a4
                \allowBreak a \bar "|"
                \allowBreak g\breve
                \allowBreak fis8
                \allowBreak a\breve
                \allowBreak b4 \bar "||"
                \allowBreak g8
                \allowBreak g
                \allowBreak e
                \allowBreak d4 \bar "|"
                \allowBreak g\breve
                \allowBreak fis8
                \allowBreak a\breve
                \allowBreak b4 \bar "||"
                \allowBreak r8
                \allowBreak b8
                \allowBreak b[ a]
                \allowBreak a
                \allowBreak g
                \allowBreak e
                \allowBreak g[ a]
                \allowBreak a[ g]
                \allowBreak g4 \bar "||"}
                \addlyrics { 
                \set includeGraceNotes = ##t
                Al -- le -- lu -- ia _ _ _ _ \markup { \bold Al } -- \markup { \bold le } -- \markup { \bold lu } -- \markup { \bold ia }
                 _ _ _ _ \markup { \bold Al } -- \markup { \bold le } -- \markup { \bold lu } -- \markup { \bold ia, } \markup { \bold Al } -- \markup { \bold le } -- \markup { \bold lu } -- \markup { \bold ia }}
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
