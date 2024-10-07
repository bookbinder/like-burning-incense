\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key a \minor
antiphon = "Mag."
psalmtone = "2"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Go in -- to my vine -- "yard, * " 
    and I will pay you a jsut wage.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    c'4 b8 c a a[ g] g4 \bar "'" g8 a g f([ a] c4) b8 c b[ a g] g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    g'\breve*5/16 e\breve*7/16 f2. d4.~ d4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    c\breve*5/16~ c\breve*7/16~ c2.~ c4. b4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*5/16 c\breve*7/16 d2. g4.~ g4
}
