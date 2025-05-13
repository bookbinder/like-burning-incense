\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "Ps_121"
psalmtone = "4"
psalmtonestruct = "33"
antKeysig = \key c \major
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    My help comes from the Lord,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    who made heav -- en and earth.
}

sopNotesAnt = \relative e' {
    r8 g8 e[ f] \bar "" a4 g8 f \bar "" g[( c b] a4)
    \hideNotes a16 \unHideNotes %so that I can align the * better
    \allowBreak a8
    \allowBreak a[ g]
    \allowBreak f[( g] a4)
    \allowBreak a8
    \allowBreak a
    \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
    c2~ c2~ c4.~ c\breve*5/16 s16
    c\breve*6/16 b4
}
tenorNotesAnt = \relative g {
    e2 f e4. f\breve*5/16~ s16
    f\breve*6/16 d4
}
bassNotesAnt = \relative c {
    c2~ c2~ c4. f,\breve*5/16 s16
    d\breve*6/16 g4
}
