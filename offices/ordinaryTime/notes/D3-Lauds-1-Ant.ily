\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "1"
psalmtone = "4"
psalmtonestruct = "33"
psalmnum = "Ps_101"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    I will sing to you, O Lord;  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    I will learn from you the way of per -- fec -- tion.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    g8 g b[ c] a g f a4( g) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    g8 g f[ e] d d4 e8 f[ a] a a a[ g] g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    e\breve*7/16~ e2.
    s16 d2.~ d2~ d
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    g\breve*7/16 c2.
    s16
    a2. c2~ c4 b
}
bassNotesAnt = \relative c {
    \global
    \keysig
    c\breve*7/16~ c2.
    s16
    d4. f~ f2 g
}
