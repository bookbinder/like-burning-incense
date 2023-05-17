\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "1"
psalmnum = "Ps_51"
psalmtone = "38"
psalmtonestruct = "32"
keysig = \key gis \minor
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    A hum -- ble, con -- trite heart, O God,  " * " 
    you will not spurn.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    \voiceOne
    r8 cis8 e[ dis] cis dis cis \bar "" b[ cis] dis \bar "" dis[( e] fis4) 
    \hideNotes fis16 \unHideNotes %so that I can align the * better
    \bar "" fis8[ gis] fis \bar "" fis[ e] \bar "" e4( dis) \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    \voiceTwo
    gis\breve*7/16 b4. b4( dis4~) s16
    dis4. cis4 b2
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    \voiceOne
    e\breve*7/16 fis4.~ fis4 b~ s16
    b4. gis4~ gis2
}
bassNotesAnt = \relative c {
    \keysig
    \global
    \voiceTwo
    cis\breve*7/16 dis4. b2~ s16
    b4. cis4 gis2 
}
