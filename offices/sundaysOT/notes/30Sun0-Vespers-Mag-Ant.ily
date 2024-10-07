\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "Mag."
psalmtone = "42"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Tea -- cher, what is the grea -- test com -- mand -- ment in
    the "law? * " Je -- sus said to him: You shall love the Lord your God
    with your whole heart, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    e4 dis cis8[ gis'] fis gis b4 gis8 fis e e e fis \bar "" dis4 \bar "'"
    dis8[ e] dis \bar "" cis[ gis'] gis fis4 \bar "'"
    e8 fis \bar "" gis[ a] gis fis[ gis] a \bar "" a4 gis8 a
    \bar "" b[ gis a gis fis]
    \bar "" fis4( e) \bar "'" e8 dis[ e] \bar "" cis4 cis \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s2 cis2 b1~ b\breve*5/16 cis4.~ cis4 e4~ e2.~ e2~ e\breve*5/16
    cis\breve*5/16 b4 gis2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis4 fis e2~ e1 fis\breve*5/16 gis4. a4 a4 b2. cis2 gis\breve*5/16
    a\breve*5/16 fis4~ fis e4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis2~ cis2 gis1 b\breve*5/16 e4.~ e4~ e4~ e2.~ e2~ e\breve*5/16
    a,\breve*5/16 b4 cis2
}
