\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "2"
psalmtone = "3"
psalmtonestruct = "44"
psalmnum = "Isa_2_2-5"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Come, let us climb " * " 
    the moun -- tain of the Lord.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    g4 e8 f g[( c b] a4) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    a8 g f e f a4( g) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    e2 f2.
    s16
    d2~ d2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    c2~ c2.
    s16
    a2 b
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c2 d2.
    s16
    f2 g
}
