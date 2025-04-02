\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "3"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "Ps_149"
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
    The hour has "come * " for the Son of Man to be glo -- ri -- fied.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 cis4 e fis8 \bar "" dis4 dis8 e cis[ gis'] fis \bar "" gis4
    fis8 e \bar "" e8 dis \bar "" dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    gis\breve*6/16 b2 cis4. e2 cis4 gis
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e\breve*6/16 fis2 gis4.~ gis2~ gis
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis\breve*6/16 b2 e4. cis2 gis
}
