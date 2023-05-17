\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "M"
psalmnum = "Magnificat"
psalmtone = "42"
psalmtonestruct = "43"
keysig = \key cis \minor
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    If you hun -- ger for ho -- li -- ness,  "*" 
    God will sat -- is -- fy your long -- ing, good meas -- ure, and
    flow -- ing o -- ver.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    \voiceOne
    cis8 dis e4 e8 e \bar "" fis e dis4
    \hideNotes dis16 \unHideNotes %so that I can align the * better
    dis8[ e] dis \bar "" e dis cis b \bar "" cis[ dis] dis4 \breathe \bar ""
    e8[ fis] \bar "" gis4 gis8 fis \bar "" gis[( gis gis]) gis \bar "" cis,4 cis \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    \voiceTwo
    gis2. b2~ s16
    b4. gis2 b2~
    b4~ b2 cis a4 gis
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    \voiceOne
    e2. dis2 s16
    fis4. e2 gis2
    e4~ e2~ e2~ e2
}
bassNotesAnt = \relative c {
    \keysig
    \global
    \voiceTwo
    cis2. b2~ s16
    b4. cis2 gis2~
    gis4 e2 a cis
}
