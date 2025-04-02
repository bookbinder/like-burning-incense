\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "1"
psalmnum = "Ps_43"
psalmtone = "56"
psalmtonestruct = "43"
keysig = \key cis \minor
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, send forth "*  "
    your light and your truth.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    e4 b8[ cis] cis[( gis' a] gis4)
    \hideNotes gis16 \unHideNotes %so that I can align the * better
    gis8 fis[ gis] fis e dis4( cis) \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    s2 cis4. b4.~ s16 b2 gis2
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    gis4 fis e2. s16 dis2 e2
}
bassNotesAnt = \relative c {
    \keysig
    \global
    cis4 dis e2. s16 b2 cis2
}
