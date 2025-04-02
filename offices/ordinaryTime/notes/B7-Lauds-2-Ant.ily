\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "Deut_32_1-12"
psalmtone = "42"
psalmtonestruct = "43"
keysig = \key cis \minor
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    Ex -- \ll "tol  * " _ the great -- ness of our God. 
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    cis8[ gis'] \bar "" gis[( b gis fis] gis4)
    \hideNotes gis16 \unHideNotes %so that I can align the * better
    gis8 \bar "" fis[ gis] fis \bar "" e dis cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    cis4 dis\breve*7/16 s16
    cis4. b4 gis
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    e4 gis\breve*7/16 s16
    a4. fis4 e4
}
bassNotesAnt = \relative c {
    \keysig
    \global
    cis4 b\breve*7/16 s16
    a4. b4 cis
}
