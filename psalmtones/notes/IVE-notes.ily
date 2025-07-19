\version "2.18.2"

toneStruct = "IVE"
toneKeysig = \key c \major

sopranoIntone = {a'8 g'[ a'] }
sopranoFlex = {a'\breve \parenthesize g'4
               a'\breve g'8 a' b' a'4 \bar "|"
               a'\breve g'8 a' b'[ a'] g'[ f'] e'4 \bar "||" }
soprano = { a'\breve g'8 a' b' a'4 \bar "|"
            a'\breve g'8 a' b'[ a'] g'[ f'] e'4 \bar "||" }

sopranoShort = { a'8 g'[ a'] \afterGrace a'\breve*1/2 \parenthesize g'4_"+"
                 g'8 a' b' a'4 \bar "|"
                 a'\breve g'8 a' b'[ a'] g'[ f'] e'4 \bar "||" }

altoIntone = { r8 c'4~ }
altoFlex = { c'\breve \parenthesize b4 c'\breve*19/16~ c'4~
             c'\breve s4 e'4 d'4 c'4}
alto = { c'\breve*19/16~ c'4~
         c'\breve s4 e'4 d'4 c'4}

tenorIntone = { r8 a4~ }
tenorFlex = { a\breve~ s4 a\breve*19/16~ a4~
              a\breve~ s4 a2~ a4 }
tenor = { a\breve*19/16 a4~
          a\breve~ s4 a2~ a4 }

bassIntone = { r8 <a, e>4~ }
bassFlex = { <a, e>\breve~ s4 <a, e>\breve*19/16~ <a, e>4~
             <a, e>\breve s4 c4 d4 a,4 }
bass = { <a, e>\breve*19/16~ <a, e>4~
         <a, e~>\breve s4 c4 d4 a,4 }



% %%%%%%%%%%%% Tone IV %%%%%%%%%%%%%%%%%%
% \score {
%   \transpose \frompitch \topitch {
%   \new PianoStaff \with { instrumentName = #"IV"} <<
%     \new Staff = "women" <<
%       \key a \minor
%       \new Voice = "sopranos" {
%         \voiceOne
%         << \global
% 	   \relative e' {
% 	     a8 g[ a] a\breve \parenthesize g4^\markup {\italic "Flexe"}
% 	     a\breve g8 a b a4 \bar "||"
% 	     a\breve^\markup {\italic "g et c"} g4 \bar "||"
% 	     a\breve^\markup {\italic "E"} g8 a b[ a] g[ f] e4 \bar "||"
% 	     a\breve^\markup {\italic "A"} g8 a b g e4 \bar "||"
% 	     a\breve^\markup {\italic "ou"} g8 a b g e e4 \bar "||"
% 	     b'8^\markup {\italic "A*"} g e4( fis) \bar "||"
% 	     a8^\markup {\italic "Solen."} g[ a] a\breve a8[ g] g[ b] b a[ b] a4 \bar "|."
% 	   }
% 	 >>
%       }
%       \new Voice = "altos" {
%         \voiceTwo
%         << \global
% 	   \relative d' {
% 	     r8 c\breve*18/16 \parenthesize b4 c\breve*19/16~ c4~
% 	     c\breve e4
% 	     c\breve*18/16 e4 d c
% 	     c\breve*18/16 b4 c
% 	     c\breve*19/16 b4 c
% 	     b4~ b2
% 	     r8 c\breve*18/16 e4~ e4.~ e2
% 	   }
% 	 >>
%       }
%     >>
%     \new Staff = "men" <<
%       \clef bass
%       \key a \minor
%       \new Voice = "tenors" {
%         \voiceOne
%         << \global
% 	   \relative f {
% 	     r8 a\breve*39/16~ a4~
% 	     a\breve b4
% 	     a\breve*18/16~ a2~ a4
% 	     e\breve*18/16~ e4~ e4
% 	     e\breve*19/16~ e4~ e4
% 	     e4 d2
% 	     r8 a'\breve*18/16 b4 d4.~ d4 c
% 	   }
% 	 >>
%       }
%       \new Voice = "basses" {
%         \voiceTwo <<
% 	  \global
% 	  \relative d {
% 	    s8 e\breve*39/16~ e4~
% 	    e\breve~ e4
% 	    e\breve*18/16 c4 d a
% 	    a\breve*18/16 g4 a
% 	    a\breve*19/16 e4 a
% 	    g b2
% 	    s8 e\breve*18/16~ e4~ e4. a2
% 	  }  
% 	>>
%       }
%       \new Voice = "pedal" {
% 	\voiceTwo <<
% 	  \global
% 	  \relative a, {
% 	    s8 a\breve*39/16~ a4~
% 	    a\breve s4
% 	    a\breve*18/16 s2.
% 	    s\breve s2.
% 	    s\breve s2 s8 s4
% 	    s2.
% 	    r8 a\breve
% 	  }	  
% 	>>
%       }
%     >>
%   >>
% }
% }
