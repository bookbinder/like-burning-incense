\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "1"
psalmnum = "Ps_92"
psalmtone = "11"
psalmtonestruct = "33"
keysig = \key e \major
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    As morn -- ing breaks we sing of your mer -- cy, \ll "Lord,   * " _
    and night will find us pro -- claim -- ing your fi -- del -- i -- ty.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    r8 e8 fis gis gis[ a] gis gis[ b] b b \bar "" a[ b] cis b4( gis)
    \hideNotes gis16 \unHideNotes %so that I can align the * better
    e8 \bar "" fis[ gis] fis  a gis fis \bar "" a4 a8 gis fis \bar "" fis e e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    r8 e8~ dis4~ e4. gis2 e4.~ e4~ e4. s16
    cis\breve*6/16 e\breve*5/16 b2
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    e2 b'4.~ b2 cis4. gis4( b4.) s16
    a\breve*6/16~ a\breve*5/16~ a4 gis
}
bassNotesAnt = \relative c {
    \keysig
    \global
    e2~ e4.~ e2~ e4.~ e4~ e4. s16
    a\breve*6/16 cis,\breve*5/16 e2
}
