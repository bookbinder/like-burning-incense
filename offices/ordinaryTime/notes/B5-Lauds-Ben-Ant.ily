\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "B"
psalmnum = "Benedictus"
psalmtone = "39"
psalmtonestruct = "43"
antKeysig = \key cis \minor
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Give your peo -- ple know -- ledge of sal -- va -- tion, Lord, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    and for -- give us our sins.
}

sopNotesAnt = \relative e' {
    e8 dis cis b \bar "" cis[ gis'] gis fis e \bar "" fis[ gis] fis fis4
    \hideNotes fis16 \unHideNotes %so that I can align the * better
    \allowBreak fis8
    \allowBreak gis
    \allowBreak cis,[ fis]
    \allowBreak fis
    \allowBreak e
    \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    gis4 s4 cis\breve*12/16 s16
    cis4~ cis4 b
}
tenorNotesAnt = \relative g {
    e4 fis gis\breve*5/16 b\breve*7/16 s16
    gis4~ gis~ gis
}
bassNotesAnt = \relative c {
    cis4 dis e\breve*5/16 dis\breve*7/16 s16
    e4 cis gis
}
