\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "M"
psalmtone = "11"
psalmtonestruct = "33"
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
    Who -- e -- ver gives up his "life * " for my sake in this world
    will find it a -- gain for -- e -- ver in the next, says the Lord.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 gis8 gis4 gis8 \bar "" fis8 a gis fis4 fis8 \bar "" fis[ gis] fis gis
    \bar "" e4 e \bar "'" e8 dis e cis \bar "" cis4 dis8 \bar "" cis[ b] b4
    e8 fis \bar "" fis([-- gis] a4) gis8 fis \bar "" fis4( e) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s4 s4. s2. s2 s\breve*8/16 s4. s2. e2. b2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis4 b4. a2. b2 gis\breve*8/16~ gis4.~ gis2. a2. gis2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e4~ e4.~ e2. dis2 cis\breve*8/16 e4.~ e2.~ e2.~ e2
}
