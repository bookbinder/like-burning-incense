\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "1"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "Ps_93"
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
    Your de -- crees, O Lord, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    are to be trus -- ted;
    your truth is more power -- ful than the roar -- ing of the seas.
}
sopNotesAnt = \relative e' {
    gis8 gis gis[ a] gis \bar "" fis4 fis8 e fis \bar ""
    gis8[ fis] fis4 \bar "," fis8 \bar "" gis8 fis e \bar ""
    fis8 e e e \bar "" dis[ fis] e dis e cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    s\breve*10/16 dis\breve*5/16 cis4.~ cis2 b\breve*5/16 gis4
}
tenorNotesAnt = \relative g {
    b\breve*5/16~ b\breve*5/16~ b\breve*5/16 e,4. a2 fis\breve*5/16 e4
}
bassNotesAnt = \relative c {
    e\breve*5/16 dis\breve*5/16 b\breve*5/16 a4.~ a2 b\breve*5/16 cis4
}
