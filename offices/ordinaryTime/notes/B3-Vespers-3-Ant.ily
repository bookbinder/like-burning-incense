\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "3"
psalmnum = "Rev_4_11_and_5_9,_10,_12"
psalmtone = "11"
psalmtonestruct = "33"
antKeysig = \key cis \minor
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    A -- do -- ra -- tion and glo -- ry 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    be -- long by right to the Lamb who was slain.
}

sopNotesAnt = \relative e' {
    b8 b e dis e \bar "" gis[ fis] fis4
    \hideNotes fis16 \unHideNotes %so that I can align the * better
    \allowBreak fis8
    \allowBreak gis
    \allowBreak fis
    \allowBreak e[ gis]
    \allowBreak b
    \allowBreak b
    \allowBreak cis4( b)
    \allowBreak a8
    \allowBreak gis
    \allowBreak fis[( gis] e4) \bar "||"
}
altoNotesAnt = \relative c' {
    b\breve*5/16 cis\breve*7/16 s16
    e2~ e2. a,4( gis)
}
tenorNotesAnt = \relative g {
    gis\breve*5/16 a\breve*7/16 s16
    gis2 e2.~ e2
}
bassNotesAnt = \relative c {
    e\breve*5/16~ e\breve*7/16~ s16
    e2 gis,2. e2
}
