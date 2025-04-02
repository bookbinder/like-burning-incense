\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key a \minor
antiphon = "M"
psalmtone = "47"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Mas -- ter, we have worked all night and have caught no -- "thing; * "
    but if you say so, I will low -- er the nets a -- gain.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    f8[ e] d \bar "" c d \bar "" d[ a'] \bar ""
    bes4 a a8 a \bar "" g[ a] \bar "" b![ c a] \bar "" a4 \bar ""
    a8 a g[-- a] \bar "" d,4 d \bar "'" c8 d \bar ""
    e f g f e \bar "" d4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s4 s4. s4 f2. s4 e4.~ e4
    f2 s2 c4~ c\breve*5/16 a4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    a4. g4 a c2.~ c4 d4. c4~
    c2 bes g4~ g\breve*5/16 f4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    d4. e4 f~ f2. e4 a4.~ a4
    f2 g2 e4 c\breve*5/16 d4
}
