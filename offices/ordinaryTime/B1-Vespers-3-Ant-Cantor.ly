\version "2.20.0"

\include "/home/ryan/scores/like-burning-incense/lbi_defs_cantor.ily"
\include "/home/ryan/scores/like-burning-incense/offices/ordinaryTime/notes/B1-Vespers-3-Ant.ily"
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
%         \clef treble \antKeysig
%         \accidentalStyle forget
%         \new Voice = "Soprano" { 
%                \relative e' {
%                 \keysig
%                 \global
%                 \oneVoice
%                 g8[ a] b4 a8 c b a[ b a] \bar "" a4 \bar ""
%                 \noBreak \hideNotes a16 \unHideNotes %so that I can align the * better
%                 g8 \bar "" fis[ g] e d4 \bar"'"
%                 g8 \allowBreak a[ b] \allowBreak g4
%                 \allowBreak g \bar "||"

%                 % \small
%                 r8 g8 a[ b] a4 a \bar "|" g\breve fis8 a\breve b4 \bar "||"
%                 g8 g e d4 \bar "|" g\breve fis8 a\breve b4 \bar "||"
%                 r8 b8 b[ a] a g e g[ a] a[ g] g4 \bar "||"}
%                 \addlyrics { 

%                 \set includeGraceNotes = ##t
%                 Praise God, all you who serve him, "*" 
%                 both great and small, al -- le -- lu -- ia.

%                 Al -- le -- lu -- ia _ _ _ _ Al -- le -- lu -- ia
%                  _ _ _ _ Al -- le -- lu -- ia, Al -- le -- lu -- ia}
%             }
%     >>

%     }
%     \layout {
%       ragged-last = ##t 
%         \context { 
%             \Staff 
%             \remove Time_signature_engraver 
%         } 

%     }
% }
