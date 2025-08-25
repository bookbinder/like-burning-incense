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
    You are all bro -- thers, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    sons of one Fa -- ther who is in
    hea -- ven. Do not call a -- ny -- one on earth your fa -- ther. Nor
    must a -- ny of you be called a tea -- cher, for your on -- ly
    tea -- cher is Christ.
}
sopNotesAnt = \relative e' {
    cis8 b cis([-- dis] e4) \bar "" e8[ dis] dis4 \bar "'" dis8[ e] dis
    \bar "" cis[ gis'] gis4 gis8 gis4 fis8 e \bar "" gis[ fis] fis4 \bar "|"
    r8 fis fis8[ gis] fis \bar "" gis[ b] b gis b \bar "" cis4 b8 \bar ""
    gis[ fis] fis4 \bar "," fis8 fis \bar "" gis fis e fis gis
    \bar "" cis,([ dis] e4) e8 \bar "" fis[ e dis] dis4 \bar ","
    dis8 e \bar "" cis[ e] e fis4 fis8 e \bar "" dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    gis2. b\breve*7/16 cis\breve*9/16 dis2~ dis\breve*5/16 fis\breve*5/16
    gis4. dis2. cis\breve*5/16~ cis\breve*5/16 b\breve*7/16 gis\breve*7/16
    b4
}
tenorNotesAnt = \relative g {
    e2. fis\breve*7/16 gis\breve*9/16 b2~ b\breve*5/16~ b\breve*5/16~
    b4.~ b2. e,\breve*5/16~ e\breve*5/16 dis\breve*7/16 e\breve*7/16 gis4
}
bassNotesAnt = \relative c {
    cis2. b\breve*7/16 e\breve*9/16 b2~ b\breve*5/16 dis\breve*5/16
    e4. b2.~ b\breve*5/16~ b\breve*5/16~ b\breve*7/16 cis\breve*7/16 gis4
}
