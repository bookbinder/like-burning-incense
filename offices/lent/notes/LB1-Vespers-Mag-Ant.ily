\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
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
    A voice spoke from the "cloud: * " This is my be -- lo -- ved
    Son in whom I am well pleased; li -- sten to him.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 cis8 cis[ gis'] gis4 fis8 e \bar "" fis4 \bar ","
    gis8[ a] gis gis gis \bar "" fis[-- gis] a8 a4 a8 a[ b] a a
    \bar "" a8[ gis] gis4 r4 \bar "|" cis,8-- cis-- e-- dis4-- \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    gis\breve*8/16 b4~ b\breve*5/16 e\breve*10/16~ e2. cis4. b4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e\breve*8/16 dis4 e\breve*5/16 a\breve*10/16 b2. gis4.~ gis4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis\breve*8/16 b4 e\breve*5/16~ e\breve*10/16~ e2.~ e4. gis,4
}
