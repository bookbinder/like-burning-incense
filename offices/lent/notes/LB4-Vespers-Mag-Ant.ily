\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor
antiphon = "M"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Magnificat"
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
    The Son of Man 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    will be han -- ded o -- ver to the Gen -- tiles
    to be mocked, scourged, and cru -- ci -- fied; and on the third day
    he will rise a -- gain.
}
sopNotesAnt = \relative e' {
    r8 cis8 cis[ e] e \bar "" dis4 dis8 e8 \bar "" fis8 fis fis e dis e fis4 fis
    fis8 gis \bar "" cis,[-- e dis] cis[-- dis] cis \bar ""
    e([ e e]) e dis4 \bar "," dis8 dis e \bar ""
    cis[ gis' fis] gis4 fis8 fis \bar "" fis e dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    gis\breve*5/16 b2~ b\breve*12/16 gis2. b\breve*9/16
    cis\breve*7/16~ cis4 b
}
tenorNotesAnt = \relative g {
    gis\breve*5/16 fis2 dis\breve*12/16 e2. fis\breve*9/16
    gis\breve*7/16~ gis4~ gis
}
bassNotesAnt = \relative c {
    cis\breve*5/16 b2~ b\breve*12/16 cis2. b\breve*9/16
    e\breve*7/16 cis4 gis
}
