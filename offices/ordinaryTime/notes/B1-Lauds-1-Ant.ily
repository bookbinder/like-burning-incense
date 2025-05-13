\version "2.18.2"
%% include "../../../lbi_defs.ily"

antKeysig = \key c \major
antiphon = "1"
psalmnum = "Ps_118"
psalmtone = "1"
psalmtonestruct = "34"
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Bless -- ed is he who comes 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    in the name of the Lord, al -- le -- lu -- ia.
}

sopNotesAnt = \relative e' {
    g8 a g e[ f]  g \bar "" f[( e] d4) \bar ""
    \hideNotes d16 \unHideNotes
    \allowBreak d8
    \allowBreak e
    \allowBreak f[ g]
    \allowBreak f
    \allowBreak g
    \allowBreak a4
    \allowBreak \breathe
    \allowBreak g8
    \allowBreak f
    \allowBreak a[ g]
    \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
    e2. s2. s16 c2~ c~ c4 b
}
tenorNotesAnt = \relative g {
    c2.~ c2 s16 a4 f2~ f d
}
bassNotesAnt = \relative c {
    c2. d4 f4~ s16 f4 a,2 f4 d g2
}
