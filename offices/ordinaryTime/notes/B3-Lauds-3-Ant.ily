\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "3"
psalmnum = "Ps_65"
psalmtone = "40"
psalmtonestruct = "43"
keysig = \key gis \minor
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    To you, O God, "*" our praise is due in Zi -- on.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    \voiceOne
    r8 dis8 dis[ fis] fis \bar "" gis[( fis ais] gis4)
    \hideNotes gis16 \unHideNotes %so that I can align the * better
    gis8 \bar "" gis[ ais] gis fis4 fis8 dis4 dis  \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    \voiceTwo
    r8 \hideNotes dis8~ \unHideNotes dis4. e2. s16
    cis2.~ cis4 b
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    \voiceOne
    b4~ b4.~ b2. s16 gis2.~ gis2
}
bassNotesAnt = \relative g {
    \keysig
    \global
    \voiceTwo
    gis4 fis4. e2.~ s16 e4. cis 4. gis2
}
