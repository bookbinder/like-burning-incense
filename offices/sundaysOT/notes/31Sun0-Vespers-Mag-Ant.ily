\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "Mag."
psalmtone = "4"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    You have one tea -- "cher, * " and he is in hea -- ven:
    Christ your Lord.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    g8 a c4 a8[ g] g4 \bar "'" g8 a[ g] f a c4 c \bar "'"
    b8([ c] b4) a8 \bar "" a4( g) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    e\breve*9/16 f2 g f\breve*5/16 d2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    c\breve*9/16~ c2~ c2~ c\breve*5/16~ c4( b)
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c\breve*9/16  f2 e d\breve*5/16 g2
}
