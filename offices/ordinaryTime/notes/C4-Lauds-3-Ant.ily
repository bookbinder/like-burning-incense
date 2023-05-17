\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "3"
psalmtone = "2"
psalmtonestruct = "43"
psalmnum = "Ps_98"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Let us ce -- le -- brate with joy " * " 
    in the pre -- sence of our Lord and King.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    e8 f g c b a g4
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    g8 g a g f g a[ c b] a g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    e2.~ e2
    s16
    f2~ f d4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    c2.~ c2~
    s16
    c2~ c b4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c2.~ c2
    s16
    f2 d g4
}
