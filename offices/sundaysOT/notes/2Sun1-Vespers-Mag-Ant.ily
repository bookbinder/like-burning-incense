\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "M"
psalmtone = "7"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    There was a wed -- ding in Ca -- na of Ga -- li -- \ll "lee,  *" 
    and Je -- sus was there with Ma -- ry, his mo -- ther.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 g8 e f \bar "" g[ c] c c \bar ""
    b([ c] a4) g8 f \bar "" a g g4 \bar ""
    g8 \bar "" f[ e f] e d \bar "" d4( a') a8 \bar ""
    g[ c] b c \bar "" a[ g] g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    e2 c2 f\breve*6/16 e\breve*5/16
    d\breve*5/16~ d\breve*5/16 g2 d2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    c2~ c~ c\breve*6/16~ c\breve*5/16
    a\breve*5/16~ a\breve*5/16 c2~ c4 b
}
bassNotesAnt = \relative c {
    \global
    \keysig
    c'2 e, f\breve*6/16 c\breve*5/16
    d\breve*5/16 f\breve*5/16 e2 g
}
