\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "3"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Ps_135_1-12"
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
    When the Son of Man comes to "earth, * " do you think he will
    find faith in men's hearts?
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    cis8 dis e[ dis] cis dis[ e] fis[ gis fis] e dis4 \bar "'"
    dis8 e fis[ e] dis dis e fis4( gis8) gis fis[ e] e4( dis4) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s2 s4. cis2 b2~ b\breve*5/16~ b2 cis4 b2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis\breve*7/16~ gis2~ gis2 fis\breve*5/16 e2 gis4~ gis2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*7/16 cis2 gis2 dis'\breve*5/16 e2 cis4 gis2
}
