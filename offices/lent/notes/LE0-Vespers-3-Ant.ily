\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "3"
psalmtone = "14"
psalmtonestruct = "43"
psalmnum = "Phil_2_6-11"
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
    Al -- though he was the Son of "God, * " Christ learned
    o -- be -- dience through suf -- fer -- ring.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 gis8 gis[ a] gis fis e \bar "" fis[ a] a \bar "" gis4 \bar "'"
    fis8[ gis] \bar "" fis[ gis] a a4 gis8 fis \bar ""
    fis8 e e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s\breve*12/16 cis4 e\breve*7/16 b2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    b\breve*7/16 cis4. b4 a4~ a\breve*7/16~ a4 gis
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*7/16~ e4.~ e4 a4 cis,\breve*7/16 e2
}
