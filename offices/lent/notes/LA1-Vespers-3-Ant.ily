\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "3"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "1_Pet_2_21_24"
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
    Now we must go up to Je -- ru -- sa -- lem 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    where all that has
    been writ -- ten a -- bout the Son of Man will be ful -- filled.
}
sopNotesAnt = \relative e' {
    cis8[ e] e dis b cis[ gis'] fis e \bar "" fis[ gis] fis fis4 \bar "'"
    fis8 \bar "" fis8[ gis] fis e fis \bar "" gis[ cis,] cis cis
    \bar "" b8 cis \bar "" dis[ e] dis \bar "" dis4 e8 fis e \bar ""
    dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    s\breve*15/16 dis\breve*5/16 cis\breve*9/16 cis\breve*5/16 b4
}
tenorNotesAnt = \relative g {
    gis\breve*9/16 b2.~ b\breve*5/16 gis\breve*4/16~ gis4 fis4.
    e\breve*5/16 gis4
}
bassNotesAnt = \relative c {
    e\breve*9/16 dis2. b\breve*5/16 e\breve*4/16~ e4
    b4. cis\breve*5/16 gis4
}
