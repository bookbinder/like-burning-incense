\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key a \minor
antiphon = "B"
psalmtone = "2"
psalmtonestruct = "43"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, if you will, you can make me "clean. * "
    And Je -- sus said, I do will it; you are made clean.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    g8[ c] a g \bar "" a4 \bar "" g8 g f a \bar "" a4( g) \bar ""
    g8 \bar "" f e \bar "" d8--[e-- d--] c \bar "" d[-- a'] g a \breathe
    \bar "" g8 g f[ a] \bar "" a4( g) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    e2 f4 \parenthesize c4 f4 d\breve*5/16~ d4 s2
    s4 f4 e f d2
}
tenorNotesAnt = \relative c' {
    \global
    \keysig
    c2~ c4~ c2 b\breve*5/16 a4~ a2
    c2~ c~ c4( b)
}
bassNotesAnt = \relative c' {
    \global
    \keysig
    c2 f,4 e d g\breve*5/16 d4 f2~
    f2 c4 d g2
}
