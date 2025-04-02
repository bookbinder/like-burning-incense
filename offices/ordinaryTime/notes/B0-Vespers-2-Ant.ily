\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "Ps_16"
psalmtone = "47"
psalmtonestruct = "33"
keysig = \key cis \minor
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    When I see your face, O Lord, "* "
    I shall know the full -- ness of joy, al -- le -- lu -- ia.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    e8 fis gis[ a] gis gis4 gis8 fis[( gis a gis] fis4)
    \hideNotes f16 \unHideNotes   %so that I can align the * better
    fis8 gis \bar ""
    e[ fis] e \bar "" dis \allowBreak e \allowBreak dis \bar ""
    cis4 \bar "'" b8 cis \bar "" dis[ cis] \bar "" cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    b\breve*8/16 cis2. s16 dis4 cis4. b4. cis4 a4 gis2
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    gis\breve*1/2 a2.~ s16 a4 gis4.~ gis4. e4 fis4~ fis e
}
bassNotesAnt = \relative d {
    \keysig
    \global
    e\breve*1/2 a,2. s16 b4 cis4. gis4. a4~ a4 cis2
}
