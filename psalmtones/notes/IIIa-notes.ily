\version "2.18.2"

toneStruct = "IIIa"
toneKeysig = \key fis \minor

sopranoIntone = { e'8 fis'[ a']  }
soprano = { a'\breve b'8 a' gis'[ fis'] a'4 \bar "|" a'\breve fis'8 a' gis'4( fis'4) \bar "||"}
sopranoFlex = { a'\breve \parenthesize fis'4 \soprano  }

altoIntone = { r8 cis'4~  }
alto = { cis'\breve*18/16 e'4 cis'4~ cis'\breve*18/16 a2  }
altoFlex = { cis'\breve*18/16~ \alto  }

tenorIntone = { r8 a4~  }
tenor = { a\breve*18/16 b4 a4~ a\breve*18/16 cis2  }
tenorFlex = { a\breve*18/16~ \tenor  }

bassIntone = { r8 <a, e>4~  }
bass = { <a, e~>\breve*18/16 e4 fis4~ <\parenthesize fis,~ fis>\breve*18/16 fis,2 }
bassFlex = { <a,~ e>\breve \parenthesize fis4 \bass  }




% %%%%%%%%%%%% Tone IV %%%%%%%%%%%%%%%%%%
% \score {
%   \transpose \frompitch \topitch {
%   \new PianoStaff \with {   } <<
%     \new Staff = "women" <<
%       \key a \minor
%       \new Voice = "sopranos" {
%         \voiceOne
%         << \global
% 	   \relative e' {
% 	     a8 g[ a] a\breve \parenthesize g4^\markup {   }
% 	     a\breve g8 a b a4 \bar "||"
% 	     a\breve^\markup {   } g4 \bar "||"
% 	     a\breve^\markup {   } g8 a b[ a] g[ f] e4 \bar "||"
% 	     a\breve^\markup {   } g8 a b g e4 \bar "||"
% 	     a\breve^\markup {   } g8 a b g e e4 \bar "||"
% 	     b'8^\markup {   } g e4( fis) \bar "||"
% 	     a8^\markup {   } g[ a] a\breve a8[ g] g[ b] b a[ b] a4 \bar "|."
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
