\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "B"
psalmnum = "Benedictus"
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
    Lord, save us
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    from the hands of all who hate us.
}

sopNotesAnt = \relative e' {
    cis8[(\tenuto dis e dis] cis4) gis'8[\tenuto fis gis] gis4
    \hideNotes gis16 \unHideNotes %so that I can align the * better
    \allowBreak gis8
    \allowBreak gis
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak e[ dis]
    \allowBreak cis
    \allowBreak dis[ cis]
    \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    gis2.~ gis\breve*7/16 s16 cis4. b gis2
}
tenorNotesAnt = \relative g {
    e2. dis\breve*7/16 s16 fis2.~ fis4 e
}
bassNotesAnt = \relative c {
    cis2. b\breve*7/16 s16 a4. gis cis2
}
