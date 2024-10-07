\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key a \minor
antiphon = "Mag"
psalmtone = "41"
psalmtonestruct = "23"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Je -- sus preached the Gos -- pel of the king -- "dom  * "
    and cured those whe were in need of heal -- ing.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    e4 e8 f[ e] d g[ a] g a c b[ a g] g4 \bar ""
    g8 a[ g f] a4 a8 g f \bar "" g8[ a g] g e4 e \bar "||"
}
altoNotesAnt = \relative d' {
    \global
    \keysig
    \voiceTwo
    s4. s4. s4. g4~ g4. s4.
    f\breve*8/16 e4 d4~ d c
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    c4.~ c~ c~ c4 d4. b
    c\breve*8/16~ c4 a~ a2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c4. d e~ e4 g2.
    f\breve*8/16 c4 d a2
}