\version "2.18.2"
%% include "../../../lbi_defs.ily"

keysig = \key cis \minor
antiphon = "1"
psalmnum = "Ps_110_1-5,_7"
psalmtone = "43"
psalmtonestruct = "43"
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    Christ our Lord \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 }
    is a priest for ev -- er, like Mel -- chiz -- e -- dek of old,
    al -- le -- lu -- ia
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    e4 b8[ cis] cis4( gis')
    \hideNotes a16 \unHideNotes %so that I can align the * better
    gis8 gis gis[ a] gis \bar "" gis[ fis] fis4 \bar "'"
    fis8 fis \bar "" e[ gis] \allowBreak e8 \allowBreak dis \allowBreak e \allowBreak fis4 \bar "'" e8 \allowBreak dis \allowBreak dis[ cis] cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    s4 s4 cis2 s16
    e4 dis4. cis2.~ cis\breve*5/16 b2 gis2
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    gis4 fis gis2~ s16 gis4~ gis 4. a2. gis\breve*5/16
    fis2~ fis4 e4
}
bassNotesAnt = \relative f {
    \keysig
    \global
    cis4 dis e2 s16 cis4 b4. a2. cis\breve*5/16 dis4 gis, cis2
}
