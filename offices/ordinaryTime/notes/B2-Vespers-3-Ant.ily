\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "3"
psalmnum = "Eph_1_3-10"
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
    God planned in the full -- ness of time 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    to re -- store all things in Christ.
}

sopNotesAnt = \relative e' {
    cis4 e8[ dis] cis b cis[ gis'] gis gis \bar "" fis[( gis] fis4)
    \noBreak \hideNotes fis16 \unHideNotes %so that I can align the * better
    \allowBreak fis8
    \allowBreak fis
    \allowBreak e[ fis]
    \allowBreak gis4
    \allowBreak cis,8
    \allowBreak b
    \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    gis\breve*10/16 cis1 s16 gis2~ gis4
}
tenorNotesAnt = \relative g {
    e\breve*10/16 fis1~ s16 fis4 dis e
}
bassNotesAnt = \relative c {
    cis\breve*10/16 a1~ s16 cis2~ cis4
}
