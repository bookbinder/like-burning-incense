\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "B"
psalmnum = "Benedictus"
psalmtone = "43"
psalmtonestruct = "43"
antKeysig = \key cis \minor
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Let us serve the Lord in ho -- li -- ness 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    all the days of our life.
}

sopNotesAnt = \relative e' {
    cis8 dis e[ dis] cis \bar "" dis[ cis] b cis[ gis'] gis gis4
    \hideNotes gis16 \unHideNotes %so that I can align the * better
    \allowBreak gis8[ a]
    \allowBreak gis
    \allowBreak fis4
    \allowBreak e8
    \allowBreak dis
    \allowBreak e[( dis] cis4) \bar "||"
}
altoNotesAnt = \relative c' {
    gis\breve*5/16 a4. gis\breve*5/16 s16
    cis\breve*7/16 gis2
}
tenorNotesAnt = \relative g {
    e\breve*5/16 fis4. e\breve*5/16 s16
    fis\breve*7/16~ fis4 e
}
bassNotesAnt = \relative c {
    cis\breve*5/16~ cis4.~ cis\breve*5/16 s16
    a\breve*7/16 cis2
}
