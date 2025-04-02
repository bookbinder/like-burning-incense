\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "2"
psalmtone = "3"
psalmtonestruct = "44"
psalmnum = "Ps_130"
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
    Do not be a -- fraid, Ma -- "ry; * " you have found
    fa -- vor with God. Be -- hold you shall con -- ceive and bear a son,
    and he will be called the Son of the most High. \ll [Al -- le -- lu -- ia.]
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    
    r8 g8 g[ c] a g \bar "" a[ g] f[ g] \bar "" g4 \bar "'"
    g8 g f[ g] \bar "" a([-- c d] c4) c8 a \bar "" g([ a] g4) \bar "|"
    r8 g8 \bar "" f[ a] c b c \bar "" a[-- b c] c b a \bar "" a4( g) \bar "'"
    g8 g[ a] g g \bar "" f([ e] d4) d8 f[ g] f g \bar "" a([~ a] a[ g]) \bar ""
    g4 \bar "||" a8 \bar "" a[ b] \bar "" g4 g \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    
    c2.~ c2~ c4 e r4 g\breve*7/16 d2
    e4 f\breve*5/16~ f\breve*6/16 e\breve*9/16 d\breve*9/16~ d2~ d4~
    d8 e4 d2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    
    e2. f4 d e c'2~ c\breve*7/16~ c4( b)
    c4~ c\breve*5/16~ c\breve*6/16~ c\breve*9/16~ c\breve*9/16~ c2 b4~
    b8 c4~ c b
}
bassNotesAnt = \relative c {
    \global
    \keysig
    
    c2.~ c2~ c4~ c4 d e\breve*7/16 g2
    c4 a\breve*5/16 f\breve*6/16 c\breve*9/16 d\breve*9/16 f2 g4~
    g8~ g4~ g2
}
