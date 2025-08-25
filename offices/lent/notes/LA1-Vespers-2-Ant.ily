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
    This is the time 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    when you can win God's fa -- vor; the day when
    you can be saved.
}
sopNotesAnt = \relative e' {
    cis4 cis8 b e([ fis] gis4) gis8 \bar "" fis[ gis] a gis[ a] gis[ fis]
    \bar "" fis[ e] e4 \bar "," e8 \bar "" fis[ gis] fis \bar ""
    e4 dis8 e \bar "" cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    s\breve*9/16 e\breve*7/16 b\breve*5/16~ b4. cis4 a gis
}
tenorNotesAnt = \relative g {
    gis\breve*9/16 a\breve*7/16 gis\breve*5/16 fis4. gis4 fis e
}
bassNotesAnt = \relative c {
    e\breve*9/16~ e\breve*7/16~ e\breve*5/16 dis4. cis2~ cis4
}
