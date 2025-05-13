\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "M"
psalmnum = "Magnificat"
psalmtone = "42"
psalmtonestruct = "43"
antKeysig = \key cis \minor
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    If you hun -- ger for ho -- li -- ness,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    God will sat -- is -- fy your long -- ing, good meas -- ure, and
    flow -- ing o -- ver.
}

sopNotesAnt = \relative e' {
    cis8 dis e4 e8 e \bar "" fis e dis4
    \hideNotes dis16 \unHideNotes %so that I can align the * better
    \allowBreak dis8[ e]
    \allowBreak dis
    \allowBreak e
    \allowBreak dis
    \allowBreak cis
    \allowBreak b
    \allowBreak cis[ dis]
    \allowBreak dis4
    \allowBreak \breathe
    \allowBreak e8[ fis]
    \allowBreak gis4
    \allowBreak gis8
    \allowBreak fis
    \allowBreak gis[( gis gis])
    \allowBreak gis
    \allowBreak cis,4
    \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
    gis2. b2~ s16
    b4. gis2 b2~
    b4~ b2 cis a4 gis
}
tenorNotesAnt = \relative g {
    e2. dis2 s16
    fis4. e2 gis2
    e4~ e2~ e2~ e2
}
bassNotesAnt = \relative c {
    cis2. b2~ s16
    b4. cis2 gis2~
    gis4 e2 a cis
}
