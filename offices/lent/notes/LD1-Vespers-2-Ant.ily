\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "2"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "Ps_112"
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
    Hap -- py the man 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    who shows mer -- cy for the Lord's sake;
    he will stand firm for -- e -- ver.
}
sopNotesAnt = \relative e' {
    cis8 b cis \bar "" e([ gis] \bar "" fis4) e8 \bar "" e[ fis]
    \bar "" gis[ a] gis fis e \bar "" fis[ gis fis] \bar "" fis4 \bar ","
    e4 e8 dis[ e] \bar "" fis4 e8 \bar "" dis8[ cis] cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    s\breve*8/16 e4 cis\breve*5/16~ cis4.~ cis\breve*5/16 b4~ b4. gis2
}
tenorNotesAnt = \relative g {
    gis4.~ gis4 a4. gis4 e\breve*5/16~ e4. a\breve*5/16 fis4 dis4. e2
}
bassNotesAnt = \relative c {
    e4. cis4~ cis4.~ cis4~ cis\breve*5/16 a4.~ a\breve*5/16 b4~ b4. cis2
}
