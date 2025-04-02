\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "3"
psalmtone = "42"
psalmtonestruct = "43"
psalmnum = "Ps_144_1-10"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, make known your will through -- out the "earth; * "
    pro -- claim your sal -- va -- tion to e -- very na -- tion.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    cis8[ e] dis dis[ e] dis cis[ gis'] gis gis gis fis4 \bar ","
    fis8 \bar "" fis[ gis] fis fis \bar ""
    gis[ cis,] cis b \bar "" dis([ e] \bar "" fis4) e8 \bar ""
    dis[ cis] cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    gis4. b4. cis\breve*5/16 b4. dis2 cis4 s4 b4~ b4. gis2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e4. fis4. gis\breve*5/16 b4.~ b2 gis2 fis4~ fis4.~ fis4 e4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis4. b4. e\breve*5/16 dis4. b2 e2 b4 gis4. cis2
}
