\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "3"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "Ps_149"
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
    Al -- le -- lu --  "ia, * "
    the Lord is ri -- sen as he pro -- mised, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    e8 b cis[ gis'] gis4 \bar "'"
    gis8 \bar "" gis[ a] gis a gis fis e \bar "" fis[ gis fis] fis4 \bar "'"
    fis8 \bar "" e[ cis] \bar "" fis[ e cis] \bar "" cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s4 cis4 b4. e\breve*7/16 cis2.~ cis4 gis4.~ gis4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis2~ gis4. b\breve*7/16 a2.~ a4 fis4. e4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e2~ e4.~ e\breve*7/16 a2. a,4 cis4.~ cis4
}
