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
    Ma -- ry has cho -- sen the bet -- ter "part, * " 
    and it shall not be ta -- ken from her.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    g4 g8 g a g f g--[a c] g g4 \bar "'" g8 g g f[ a] c b([ c] a4) a8 a g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    e2 f4.~ f2 s4 s4. f4.~ f2. d4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    c2~ c4.~ c2~ c\breve*5/16~ c4.~ c2. b4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c2 f4. d2 e\breve*5/16 a4. f2. g4
}
