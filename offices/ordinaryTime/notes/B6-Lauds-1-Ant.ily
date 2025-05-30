\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "1"
psalmnum = "Ps_51"
psalmtone = "38"
psalmtonestruct = "32"
antKeysig = \key gis \minor
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = cis
master-to-pitch = c

text = \lyricmode {
    \set includeGraceNotes = ##t
    A hum -- ble, con -- trite heart, O God,   
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    you will not spurn.
}

sopNotesAnt = \relative e' {
    r8 cis8 e[ dis] cis dis cis \bar "" b[ cis] dis \bar "" dis[( e] fis4) 
    \hideNotes fis16 \unHideNotes %so that I can align the * better
    \allowBreak fis8[ gis]
    \allowBreak fis
    \allowBreak fis[ e]
    \allowBreak e4( dis) \bar "||"
}
altoNotesAnt = \relative c' {
    gis\breve*7/16 b4. b4( dis4~) s16
    dis4. cis4 b2
}
tenorNotesAnt = \relative g {
    e\breve*7/16 fis4.~ fis4 b~ s16
    b4. gis4~ gis2
}
bassNotesAnt = \relative c {
    cis\breve*7/16 dis4. b2~ s16
    b4. cis4 gis2 
}
