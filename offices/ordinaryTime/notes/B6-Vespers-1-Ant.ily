\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "1"
psalmnum = "Ps_116_1-9"
psalmtone = "43"
psalmtonestruct = "43"
keysig = \key cis \minor
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, keep my soul from \ll "death,   * " _
    ne -- ver let me stum -- ble.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    e4 b8 cis \bar "" cis[ gis'] gis gis4
    \hideNotes gis16 \unHideNotes %so that I can align the * better
    \bar "" fis8[ gis] fis \bar "" e dis \bar "" dis[ cis] cis4  \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    gis4 s4 cis4. e4 s16
    dis4 b gis2
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    e4 fis gis4. b4~ s16
    b4. fis4~ fis e
}
bassNotesAnt = \relative c {
    \keysig
    \global
    cis4 dis e4.~ e4 s16
    b4.~ b4 cis2
}
