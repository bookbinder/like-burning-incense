\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key gis \minor
antiphon = "B"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Fa -- ther, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    I have sinned a -- gainst hea -- ven and a -- gainst
    you; I no long -- er de -- serve to be called your son; treat me as one
    of your ser -- vants.
}
sopNotesAnt = \relative e' {
    e4( cis8[-- dis] e[ dis cis]) cis4 \bar "'" b8 b8 \bar "" cis[ gis'] gis
    fis[ gis] \bar "" b[ cis b] b4 b8 b \bar "" gis[ b] \bar "" ais4( gis)
    \bar "," gis gis8 \bar "" fis[ gis fis] e fis \bar "" gis4( cis,) cis8 cis
    b cis \bar "" dis4 r4 \bar "|" e8[ fis e] e4 e8 \bar "" dis[ fis] e dis
    \bar "" dis[ cis] cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    gis\breve*9/16 r4 cis\breve*5/16 fis\breve*7/16~ fis4 e2
    b4.~ b\breve*5/16 gis\breve*8/16 b2 gis2. cis2
    gis2
}
tenorNotesAnt = \relative g {
    e\breve*9/16 fis4 gis\breve*5/16 fis\breve*7/16 b4~ b2
    e,4. fis\breve*5/16 e\breve*8/16 gis2 e2. fis2
    e2
}
bassNotesAnt = \relative c {
    cis\breve*9/16 dis4 e\breve*5/16 dis\breve*7/16~ dis4 e2~
    e4. dis\breve*5/16 cis\breve*8/16 gis2 cis2.~ cis2~
    cis2
}
