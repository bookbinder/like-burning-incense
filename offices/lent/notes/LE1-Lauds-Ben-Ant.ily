\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
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
    Our friend La -- za -- "rus * " has fal -- len a -- sleep;
    let us go and wake him.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 gis8 gis[ a] a gis gis4 gis8 \bar ""
    fis8 gis fis \bar "" fis([ gis] a4) \bar "'"
    gis8 gis fis gis \bar "" e4 e \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s\breve*9/16 cis4. e2~ e4 cis b2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    b\breve*9/16 a4.~ a2 b4 a4~ a gis4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*9/16 a4. cis,2 e2~ e
}
