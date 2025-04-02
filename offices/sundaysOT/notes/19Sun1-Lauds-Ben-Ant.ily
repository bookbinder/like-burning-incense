\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "B"
psalmtone = "1"
psalmtonestruct = "34"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    A -- men, A -- men I say to "you: * " 
    Who -- e -- ver be -- lieves in me will live for -- e -- ver, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 g8 g[ c] a a[ g] f g[ a] a g4 \bar "'" g8 b c d c[ a] c c4( b) \bar "'"
    a8 g[ a] g a b \breathe a8 a a[ g] g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s2 s8 f2. d\breve*6/16 e4. g\breve*5/16 f\breve*7/16 d2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    c\breve*5/16~ c2. b\breve*6/16 a4. d\breve*5/16~ d\breve*5/16 c4~ c b
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e\breve*5/16 f2. g\breve*6/16~ g4.~ g\breve*5/16 d\breve*7/16 g2
}