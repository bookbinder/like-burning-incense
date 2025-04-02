\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "B"
psalmnum = "Benedictus"
psalmtone = "39"
psalmtonestruct = "43"
keysig = \key gis \minor
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    Give your peo -- ple know -- ledge of sal -- va -- tion, Lord, "* " 
    and for -- give us our sins.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    e8 dis cis b \bar "" cis[ gis'] gis fis e \bar "" fis[ gis] fis fis4
    \hideNotes fis16 \unHideNotes %so that I can align the * better
    fis8 \allowBreak gis \bar "" cis,[ fis] \bar "" fis e dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    gis4 s4 cis\breve*12/16 s16
    cis4~ cis4 b
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    e4 fis gis\breve*5/16 b\breve*7/16 s16
    gis4~ gis~ gis
}
bassNotesAnt = \relative c {
    \keysig
    \global
    cis4 dis e\breve*5/16 dis\breve*7/16 s16
    e4 cis gis
}
