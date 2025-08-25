\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "B"
psalmtone = "17"
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
    You have one tea -- cher, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    and he is in hea -- ven: Christ your Lord.
}
sopNotesAnt = \relative e' {
    e4 e8 fis[ gis] fis[ e] e4 \bar "'" e8 \bar "" dis4 \bar "" e8 cis
    \bar "" cis[ b] b4 \bar "," e8([ gis] fis4) gis4 \bar "" fis( e) \bar "||"
}
altoNotesAnt = \relative c' {
    b\breve*10/16~ b4 cis s2 e2. b2
}
tenorNotesAnt = \relative g {
    e\breve*10/16 fis4 e fis2 gis4( a2) gis
}
bassNotesAnt = \relative c {
    gis\breve*10/16 b4 cis dis2 e2.~ e2
}
