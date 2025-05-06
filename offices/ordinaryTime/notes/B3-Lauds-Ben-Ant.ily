\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "B"
psalmnum = "Benedictus"
psalmtone = "42"
psalmtonestruct = "43"
keysig = \key cis \minor
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, save us " \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 }
    from the hands of all who hate us.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    cis8[(\tenuto dis e dis] cis4) gis'8[\tenuto fis gis] gis4
    \hideNotes gis16 \unHideNotes %so that I can align the * better
    gis8 gis \bar "" fis[ gis] fis e[ dis] cis \bar "" dis[ cis] cis4  \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    gis2.~ gis\breve*7/16 s16 cis4. b gis2
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    e2. dis\breve*7/16 s16 fis2.~ fis4 e
}
bassNotesAnt = \relative c {
    \keysig
    \global
    cis2. b\breve*7/16 s16 a4. gis cis2
}
