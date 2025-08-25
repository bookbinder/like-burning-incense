\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key cis \minor
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
    The rich man, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    who had re -- fused La -- za -- rus a crust of bread,
    plea -- ded for a drop of wa -- ter.
}
sopNotesAnt = \relative e' {
    r8^"Different psalm tone below than the original (p 195). Does it work?"
    cis8 e[ dis cis] cis4 cis8 dis e fis[ gis] gis fis e fis \bar ""
    fis[ gis] fis fis4 \bar "'"
    gis8([ b cis] b4) b8 gis fis \bar "" gis[ cis,] cis \bar ""
    e[ fis] fis4 \bar "||"
}
altoNotesAnt = \relative c' {
    gis\breve b\breve*5/16 dis\breve*8/16 r4. e4 dis4
}
tenorNotesAnt = \relative g {
    e\breve dis\breve*5/16 b'\breve*8/16 gis4.~ gis4 b4
}
bassNotesAnt = \relative c {
    cis\breve b\breve*5/16 gis'\breve*8/16~
    b,2
}
