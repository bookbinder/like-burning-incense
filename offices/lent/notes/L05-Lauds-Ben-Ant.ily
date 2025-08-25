\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "B"
psalmtone = "45"
psalmtonestruct = "42"
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
    If a -- ny -- one wish -- es to be my dis -- ci -- ple, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    he must
    de -- ny him -- self, take up his cross, and fol -- low me, says the Lord.
}
sopNotesAnt = \relative e' {
    r8 cis8 cis b cis e dis cis \bar "" b4 cis8 dis \bar "" dis[ cis] cis4 \bar "'"
    e8 e fis e[ gis] gis \bar "" fis4 \bar "'"
    e8[ gis] fis e \bar "" fis4 \bar "'"
    fis8 \bar "" e([ fis] e4) e8 \bar "" dis[-- fis] e dis dis4( cis4) \bar "||"
}
altoNotesAnt = \relative c' {
    gis\breve*8/16 s2 s\breve*10/16 s4 s2 cis4. b\breve*5/16~ b2 gis
}
tenorNotesAnt = \relative g {
    e\breve*8/16 fis2 gis\breve*10/16 b4 gis2 a4. gis\breve*5/16
    fis2~ fis4( e)
}
bassNotesAnt = \relative c {
    cis\breve*8/16 dis2 e\breve*10/16 dis4 cis2 a4. b\breve*5/16~
    b2 cis2
}
