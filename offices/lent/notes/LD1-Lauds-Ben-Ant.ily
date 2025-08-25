\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "B"
psalmtone = "42"
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
    It was un -- heard of 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    for a -- ny -- one to o -- pen
    the eyes of a man born blind
    un -- til the co -- ming of Christ, the Son of God.
}
sopNotesAnt = \relative e' {
    r8 cis8 b cis cis[ gis'] \bar "" gis4 gis8 \bar ""
    gis8 fis e fis \bar "" gis8([ b cis] b4) b8 b8 \bar ""
    gis4( fis) e8 fis \bar "" fis8([ gis] a4) gis8[ a] \bar ""
    gis4( fis) \bar "'" fis8 fis e \bar "" dis e fis fis4 dis8 \bar ""
    e dis dis4( cis) \bar "||"
}
altoNotesAnt = \relative c' {
    s\breve*6/16 e4.~ e2 fis\breve*7/16 dis2. e2. cis\breve*7/16
    b2.~ b4 gis2
}
tenorNotesAnt = \relative g {
    gis2. b4.~ b2~ b\breve*7/16~ b2. a2.~ a\breve*7/16 fis4. dis4. fis4~
    fis4( e4)
}
bassNotesAnt = \relative c {
    e2.~ e4.~ e2 dis\breve*7/16 b2. cis2.
    a\breve*7/16 b2.~ b4 cis2
}
