\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key a \minor
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
    Of what use is it to a "man * " to gain the whole world, if he pays
    for it by lo -- sing his soul?
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 g8 c4 b8 c a g f g4 g8 a[ b] a b--[ a] g4 \bar "'"
    g8 g f[ e] d \bar "" d4 d8 a' b a \bar "" g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    e\breve*9/16~ e4. f4.~ f4 \parenthesize c2~ \parenthesize c4.
    d2.~ d4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    g\breve*9/16 c4.~ c4.~ c4~ c2~ c4. a4. c4. b4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c\breve*9/16~ c4. f d4 e2 a4. f2. g4
}
