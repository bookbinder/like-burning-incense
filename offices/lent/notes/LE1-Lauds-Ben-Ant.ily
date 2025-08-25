\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "B"
psalmtone = "9"
psalmtonestruct = "33"
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
    Our friend La -- za -- rus 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    has fal -- len a -- sleep;
    let us go and wake him.
}
sopNotesAnt = \relative e' {
    r8 gis8 gis[ a] a gis gis4 gis8 \bar ""
    fis8 gis fis \bar "" fis([ gis] a4) \bar "'"
    gis8 gis fis gis \bar "" e4 e \bar "||"
}
altoNotesAnt = \relative c' {
    s\breve*9/16 cis4. e2~ e4 cis b2
}
tenorNotesAnt = \relative g {
    b\breve*9/16 a4.~ a2 b4 a4~ a gis4
}
bassNotesAnt = \relative c {
    e\breve*9/16 a4. cis,2 e2~ e
}
