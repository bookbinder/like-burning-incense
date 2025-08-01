\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key c \major
antiphon = "3"
psalmtone = "2"
psalmtonestruct = "43"
psalmnum = "Ps_19_2-7"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  The glo -- ry of God il -- lu -- mines the ci -- ty;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the Lamb of God is its light, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    r8 g8 g e f g[ a] g c b a a[ g] g4
    \noBreak \noBreak \hideNotes g16 \unHideNotes
    \allowBreak g8
    \allowBreak a[ g]
    \allowBreak f
    \allowBreak a4
    \allowBreak a8
    \allowBreak a
    \allowBreak g[-- c]
    \allowBreak \breathe
    \allowBreak b8
    \allowBreak a
    \allowBreak a[ g]
    \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    s\breve*11/16 e\breve*5/16 s16 f4.~ f2
    g2 d2
}
tenorNotesAnt = \relative g {
    
    
    c\breve*11/16~ c\breve*5/16~ s16 c4.~ c2~ c2~ c4 b
}
bassNotesAnt = \relative c {
    
    
    e\breve*11/16 c\breve*5/16 s16 f4. d2 e g
}
