\version "2.20.0"

\include "/home/ryan/scores/like-burning-incense/lbi_defs_cantor.ily"
\include "notes/AA1-Vespers-3-Ant.ily"
\include "/home/ryan/scores/like-burning-incense/psalmtones/notes/68-notes.ily"

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
            \oneVoice \autoLineBreaksOn \global 
            \mark \markup { \small \psalmtone }
            \sopNotesAnt \autoLineBreaksOff
}
        \new Lyrics \lyricsto Soprano { \override LyricText.font-size = \lyricsize
                                        \text }
    >>

    }
    \layout {
      ragged-last = ##t 
    %% indent = 0.5\in
        \context { 
            \Staff 
            \remove Time_signature_engraver 
        } 

    }
}




% \score {
%     \header {
%       % piece = \markup \with-color "red" { \bold \fontsize #1 #(string-append "Ant. " antiphon) }
%       % opus = #(string-append "(" psalmtone ")")
%       tagline = ##f
%     }
    
%     \transpose \master-from-pitch \master-to-pitch {
%     \new Staff
      
%     <<
%         \midi_instrument
%         \clef treble
%         \key g \major
%         \accidentalStyle forget
%         \new Voice = "Soprano" { 
%             \relative e' {
%                 \global	% will be populated by an include file
%                     % in the cantor/organ scores called lbi_defs
%                 \oneVoice
%                 g4( fis8) g e d4 
%                 \noBreak \hideNotes d16 \unHideNotes   %so that I can align the * better
%                 \allowBreak g4
%                 \allowBreak a8
%                 \allowBreak g
%                 \allowBreak a
%                 \allowBreak b
%                 \allowBreak b4 \bar "'"
%                 \allowBreak d8
%                 \allowBreak b
%                 \allowBreak a[ g]
%                 \allowBreak g4 \bar "||"

%                 % \small
%                 % r8 g8 a[ b] a4 a \bar "|" g\breve fis8 a\breve b4 \bar "||"
%                 % g8 g e d4 \bar "|" g\breve fis8 a\breve b4 \bar "||"
%                 % r8 b8 b[ a] a g e g[ a] a[ g] g4 \bar "||"
%               }
%                 \addlyrics { 
%                 \set includeGraceNotes = ##t
%                 All power is yours,
%                 \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
%                 Lord God, our might -- y King, al -- le -- lu -- ia.

%                 % Al -- le -- lu -- ia _ _ _ _ \markup { \bold Al } -- \markup { \bold le } -- \markup { \bold lu } -- \markup { \bold ia }
%                 % _ _ _ _ \markup { \bold Al } -- \markup { \bold le } -- \markup { \bold lu } -- \markup { \bold ia, } \markup { \bold Al } -- \markup { \bold le } -- \markup { \bold lu } -- \markup { \bold ia }

%               }
%             }
        
%     >>

%     }
%     \layout {
%       ragged-last = ##t 
    %% indent = 0.5\in
%         \context { 
%             \Staff 
%             \remove Time_signature_engraver 
%         } 

%     }
% }
