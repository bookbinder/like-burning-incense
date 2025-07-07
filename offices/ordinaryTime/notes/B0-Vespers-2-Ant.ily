\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "Ps_16"
psalmtone = "47"
psalmtonestruct = "33"
antKeysig = \key cis \minor
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    When I see your face, O Lord, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    I shall know the full -- ness of joy, al -- le -- lu -- ia.
}

sopNotesAnt = \relative e' {
    e8 fis gis[ a] gis gis4 gis8 fis[( gis a gis] fis4)
    \noBreak \hideNotes f16 \unHideNotes   %so that I can align the * better
    \allowBreak fis8
    \allowBreak gis
    \allowBreak e[ fis]
    \allowBreak e
    \allowBreak dis
    \allowBreak e
    \allowBreak dis
    \allowBreak cis4 \bar "'"
    \allowBreak b8
    \allowBreak cis
    \allowBreak dis[ cis]
    \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    b\breve*8/16 cis2. s16 dis4 cis4. b4. cis4 a4 gis2
}
tenorNotesAnt = \relative g {
    gis\breve*1/2 a2.~ s16 a4 gis4.~ gis4. e4 fis4~ fis e
}
bassNotesAnt = \relative d {
    e\breve*1/2 a,2. s16 b4 cis4. gis4. a4~ a4 cis2
}
