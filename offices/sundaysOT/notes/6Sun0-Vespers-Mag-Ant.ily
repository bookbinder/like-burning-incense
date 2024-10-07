\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "Mag."
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    If you are bring -- ing your gift to the al -- "tar, * "
    and there you re -- mem -- ber that your bro -- ther has
    some -- thing a -- gainst you, leave your
    gift in front of the al -- tar; go at once and make peace with your
    bro -- ther, and then come back and of -- fer your gift.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 e8 fis gis gis4 gis8 gis fis[ a] gis fis gis4 gis \bar "'"
    gis8 fis[ gis] e fis \bar "" gis fis e gis b cis b cis4 cis8 b gis4 gis \bar "'"
    gis8[ fis] e fis4 fis8 gis fis fis fis[ e] e4 r4 \bar "|"
    e4 e8 dis[ e] cis cis[ e]
    dis([ e] cis4) cis8 cis[ e] fis4 fis \bar "'" fis8 e[ gis] a[ b] e,4 \bar "'"
    e8 gis4 gis8 fis e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s2 e2~ e~ e\breve*9/16
    e2~ e4.~ e2 e cis4.~
    cis\breve*6/16 b2. cis\breve*15/16
    b\breve*5/16 cis4 e cis4.~ cis2 b4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis2 b cis b\breve*5/16~ b2 gis2~ gis4. a2 b a4.~
    a\breve*6/16 a4 gis2~ gis\breve*8/16~ gis\breve*7/16
    fis\breve*5/16 gis2 a4.~ a2 gis4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e2~ e~ e~ e\breve*5/16 dis2
    cis2 b4. a2 e'2 a4.~ a\breve*6/16 e2. cis\breve*8/16 e\breve*7/16
    dis\breve*5/16 cis4 b a4. e'2~ e4
}
