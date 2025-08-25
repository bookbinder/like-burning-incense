\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "2"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "Ps_114"
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
    The Lord of hosts 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    pro -- tects us and sets us free;
    he guides and saves his peo -- ple.
}
sopNotesAnt = \relative e' {
    r8 cis8 cis[ b] e \bar "" fis4( gis) gis8 \bar "" gis[ a] gis gis
    gis[ fis] e \bar "" fis8([ gis] fis4) \bar "'" fis8
    \bar "" e[ fis] e \bar "" dis([ e] \bar "" fis4) e8 \bar ""
    dis[ cis] cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    s\breve*10/16 b\breve*7/16 cis\breve*5/16~ cis4.
    b4~ b4. gis2
}
tenorNotesAnt = \relative g {
    gis\breve*5/16 b\breve*5/16 e,\breve*7/16~ e\breve*5/16 a4.
    fis4 dis4. e2
}
bassNotesAnt = \relative c {
    e\breve*5/16~ e\breve*5/16~ e\breve*7/16 a,\breve*5/16~ a4.
    b4~ b4. cis2
}
