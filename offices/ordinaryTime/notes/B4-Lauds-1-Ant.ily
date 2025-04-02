\version "2.18.2"
% %% include "../../../lbi_defs.ily"

antiphon = "1"
psalmnum = "Ps_77"
psalmtone = "11"
psalmtonestruct = "33"
keysig = \key e \major
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    O God, all your ways are ho -- ly; " * "
    what god can com -- pare with our God?
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    r8 e8 fis[-- gis] gis[ a] gis \bar "" fis gis \bar "" a4 gis4
    \hideNotes gis16 \unHideNotes %so that I can align the * better
    gis8 \bar "" fis[ gis] fis gis \bar "" a4 \allowBreak gis8 \bar "" fis4 \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    b\breve*9/16 e\breve*5/16 s16 cis2 e4. b2
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    gis\breve*7/16 a4 b\breve*5/16 s16 a2~ a4.~ a4 gis
}
bassNotesAnt = \relative c {
    \keysig
    \global
    e\breve*7/16~ e4~ e\breve*5/16 s16 a2 cis,4. e2
}
