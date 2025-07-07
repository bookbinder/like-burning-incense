\version "2.18.2"
% %% include "../../../lbi_defs.ily"

antiphon = "1"
psalmnum = "Ps_77"
psalmtone = "11"
psalmtonestruct = "33"
antKeysig = \key e \major
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    O God, all your ways are ho -- ly;
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    what god can com -- pare with our God?
}

sopNotesAnt = \relative e' {
    r8 e8 fis[-- gis] gis[ a] gis \bar "" fis gis \bar "" a4 gis4
    \noBreak \hideNotes gis16 \unHideNotes %so that I can align the * better
    \allowBreak gis8
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak gis
    \allowBreak a4
    \allowBreak gis8
    \allowBreak fis4
    \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
    b\breve*9/16 e\breve*5/16 s16 cis2 e4. b2
}
tenorNotesAnt = \relative g {
    gis\breve*7/16 a4 b\breve*5/16 s16 a2~ a4.~ a4 gis
}
bassNotesAnt = \relative c {
    e\breve*7/16~ e4~ e\breve*5/16 s16 a2 cis,4. e2
}
