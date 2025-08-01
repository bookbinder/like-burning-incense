\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "Ps_67"
psalmtone = "39"
psalmtonestruct = "43"
antKeysig = \key c \major
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    May God turn his ra -- diant face toward us, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    and fill us with his bles -- sings.
}

sopNotesAnt = \relative e' {
    r8 g8 g4 e8 f \bar "" a g g g \bar "" e4 
    \noBreak \hideNotes e16 \unHideNotes %so that I can align the * better
    \allowBreak e8
    \allowBreak f[-- g a ]
    \allowBreak a4
    \allowBreak g8
    \allowBreak f
    \allowBreak f[ e]
    \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
    c2. c4 d e4. s16
    a,\breve*5/16 d4~ d c
}
tenorNotesAnt = \relative g {
    e2. f2 g4. s16
    f\breve*5/16 a4~ a2
}
bassNotesAnt = \relative c {
    c2.~ c2~ c4. s16
    d\breve*5/16~ d4 a2
}
