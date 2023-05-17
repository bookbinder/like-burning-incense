\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "M"
psalmnum = "Magnificat"
psalmtone = "43"
psalmtonestruct = "43"
keysig = \key cis \minor
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    Re -- mem -- ber your mer -- cy, Lord, " * "
    the pro -- mise of mer -- cy you made to our fa -- thers.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    \voiceOne
    r8 cis8 e dis cis \bar "" dis4 b8 cis[( e] dis4)
    \hideNotes dis16 \unHideNotes %so that I can align the * better
    dis8 \bar "" e dis cis gis'4 fis8 e \bar "" dis[ fis] e dis \bar "" cis4 cis  \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    \voiceTwo
    gis\breve*5/16 b4.~ b4~ b4. s16
    gis\breve*7/16 gis2 gis
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    \voiceOne
    e\breve*5/16 fis4. e4( fis4.) s16
    e\breve*7/16 fis2~ fis4 e4
}
bassNotesAnt = \relative c {
    \keysig
    \global
    \voiceTwo
    cis\breve*5/16 b4.~ b4~ b4. s16
    cis\breve*7/16  b4 gis cis2
}
