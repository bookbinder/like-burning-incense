\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "M"
psalmnum = "Magnificat"
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
    Re -- mem -- ber your mer -- cy, Lord,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    the pro -- mise of mer -- cy you made to our fa -- thers.
}

sopNotesAnt = \relative e' {
    r8 cis8 e dis cis \bar "" dis4 b8 cis[( e] dis4)
    \noBreak \hideNotes dis16 \unHideNotes %so that I can align the * better
    \allowBreak dis8
    \allowBreak e
    \allowBreak dis
    \allowBreak cis
    \allowBreak gis'4
    \allowBreak fis8
    \allowBreak e
    \allowBreak dis[ fis]
    \allowBreak e
    \allowBreak dis
    \allowBreak cis4
    cis \bar "||"
}
altoNotesAnt = \relative c' {
    gis\breve*5/16 b4.~ b4~ b4. s16
    gis\breve*7/16 gis2 gis
}
tenorNotesAnt = \relative g {
    e\breve*5/16 fis4. e4( fis4.) s16
    e\breve*7/16 fis2~ fis4 e4
}
bassNotesAnt = \relative c {
    cis\breve*5/16 b4.~ b4~ b4. s16
    cis\breve*7/16  b4 gis cis2
}
%% update
