\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "1"
psalmnum = "Ps_92"
psalmtone = "11"
psalmtonestruct = "33"
antKeysig = \key e \major
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    As morn -- ing breaks we sing of your mer -- cy, Lord,   
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    and night will find us pro -- claim -- ing your fi -- del -- i -- ty.
}

sopNotesAnt = \relative e' {
    r8 e8 fis gis gis[ a] gis gis[ b] b b \bar "" a[ b] cis b4( gis)
    \noBreak \hideNotes gis16 \unHideNotes %so that I can align the * better
    \allowBreak e8
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak a
    \allowBreak gis
    \allowBreak fis
    \allowBreak a4
    \allowBreak a8
    \allowBreak gis
    \allowBreak fis
    \allowBreak fis
    \allowBreak e
    \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
    r8 e8~ e4~ e4. gis2 e4.~ e4~ e4. s16
    cis\breve*6/16 e\breve*5/16 b2
}
tenorNotesAnt = \relative g {
    e2 b'4.~ b2 cis4. gis4( b4.) s16
    a\breve*6/16~ a\breve*5/16~ a4 gis
}
bassNotesAnt = \relative c {
    e2~ e4.~ e2~ e4.~ e4~ e4. s16
    a\breve*6/16 cis,\breve*5/16 e2
}
