\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "Ps_67"
psalmtone = "39"
psalmtonestruct = "43"
keysig = \key c \major
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    May God turn his ra -- diant face toward us, "*"
    and fill us with his bles -- sings.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    \voiceOne
    r8 g8 g4 e8 f \bar "" a g g g \bar "" e4. 
    \hideNotes e16 \unHideNotes %so that I can align the * better
    e8 \bar "" f\tenuto[ g a ] a4 g8 f \bar "" f[ e] e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    \voiceTwo
    c2. c4 d e4. s16
    a,\breve*6/16 d4~ d c
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    \voiceOne
    e2. f2 g4. s16
    f\breve*6/16 a4~ a2
}
bassNotesAnt = \relative c {
    \keysig
    \global
    \voiceTwo
    c2.~ c2~ c4. s16
    d\breve*6/16~ d4 a2
}
