\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "1"
psalmnum = "Ps_116_1-9"
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
    Lord, keep my soul from death,   
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    ne -- ver let me stum -- ble.
}

sopNotesAnt = \relative e' {
    e4 b8 cis \bar "" cis[ gis'] gis gis4
    \hideNotes gis16 \unHideNotes %so that I can align the * better
    \allowBreak fis8[ gis]
    \allowBreak fis
    \allowBreak e
    \allowBreak dis
    \allowBreak dis[ cis]
    \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    gis4 s4 cis4. e4 s16
    dis4 b gis2
}
tenorNotesAnt = \relative g {
    e4 fis gis4. b4~ s16
    b4. fis4~ fis e
}
bassNotesAnt = \relative c {
    cis4 dis e4.~ e4 s16
    b4.~ b4 cis2
}
