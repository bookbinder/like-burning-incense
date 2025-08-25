\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
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
    Store up for your -- selves 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    trea -- sure in hea -- ven
    where nei -- ther rust nor moth can des -- troy.
}
sopNotesAnt = \relative e' {
    cis4 cis8[ e] dis cis \bar "" b4 \bar "" e e8 cis8 \bar ""
    dis[ e fis] \bar "" fis4 fis8 e fis \bar "" gis4 fis8 e[ fis]
    e dis \bar "" cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    s2. s4 s2 dis4.~ dis\breve*5/16 cis\breve*7/16 gis4
}
tenorNotesAnt = \relative g {
    gis2. fis4 gis2 b4. fis\breve*5/16~ fis\breve*7/16 e4
}
bassNotesAnt = \relative c {
    e2. dis4 cis2 b4.~ b\breve*5/16 a\breve*7/16 cis4
}
