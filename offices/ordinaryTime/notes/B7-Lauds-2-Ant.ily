\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "Deut_32_1-12"
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
    Ex -- tol __ 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    the great -- ness of our God. 
}

sopNotesAnt = \relative e' {
    cis8[ gis'] \bar "" gis[( b gis fis] gis4)
    \hideNotes gis16 \unHideNotes %so that I can align the * better
    \allowBreak gis8
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak e
    \allowBreak dis
    \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    cis4 dis\breve*7/16 s16
    cis4. b4 gis
}
tenorNotesAnt = \relative g {
    e4 gis\breve*7/16 s16
    a4. fis4 e4
}
bassNotesAnt = \relative c {
    cis4 b\breve*7/16 s16
    a4. b4 cis
}
