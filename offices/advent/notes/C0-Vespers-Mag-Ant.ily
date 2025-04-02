\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "M"
psalmtone = "42"
psalmtonestruct = "43"
psalmnum = "Magnificat"
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
    There was no god be -- fore "me * " and af -- ter me there will be none;
    e -- very knee shall bend in wor -- ship, and e -- very tongue shall praise
    me.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    cis8 cis cis[ gis'] gis([ a] gis4) gis8 gis4 \bar ""
    gis4( fis) \bar "'" fis8 fis fis \bar "" e4
    \bar "" e e8 dis \bar "" cis4 r4 \bar "|"
    cis8 b \bar "" cis--([ dis] e4) e8 fis e \bar ""
    e[ dis] dis4 \bar "'" dis8 dis[ e] dis8
    \bar "" dis([ e] dis4) e8 \bar "" dis[ cis] cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    cis4 cis4 e\breve*5/16 dis4 cis\breve*7/16~ cis4 a2 gis2
    s4 s2 s4. b\breve*8/16~ b\breve*5/16 gis2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    a4 gis b\breve*5/16 gis4 a\breve*7/16 gis4 fis2 e2
    fis4 gis\breve*7/16 fis\breve*8/16~ fis\breve*5/16~ fis4 e4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    fis4 e4~ e\breve*5/16 b4 a\breve*7/16 cis4~ cis2~ cis2
    dis4 e\breve*7/16 b\breve*8/16 gis\breve*5/16 cis2
}
