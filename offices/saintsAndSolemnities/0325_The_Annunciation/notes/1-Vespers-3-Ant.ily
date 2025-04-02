\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "3"
psalmtone = "7"
psalmtonestruct = "43"
psalmnum = "Col_1_12-20"
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
    I am the hand -- maid of the "Lord. * " Let it be done to me
    as you have said. \ll [Al -- le -- lu -- ia.]
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    
    c'4 b8 a \bar "" c[ d] c b a \bar "" g4 \bar ","
    g4 g8 g \bar "" f[ e] d \bar "" d d a' a \bar "" g4 \bar "||"
    a8 \bar "" a[ b] \bar "" g4 g \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    
    g'2 e\breve*5/16~ e2. d4.~ d2~ d4~ d8 e4 d2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    
    c2~ c\breve*5/16~ c2. a4.~ a2 b4~ b8 c4~ c b
}
bassNotesAnt = \relative c {
    \global
    \keysig
    
    e2 a\breve*5/16 c,2. d4. f2 g4~ g8~ g4~ g2
}
