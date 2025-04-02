\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "B"
psalmtone = "56"
psalmtonestruct = "43"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    I am the li -- ving bread come down from hea -- "ven. * " 
    A -- ny -- one who eats this bread will live for e -- ver, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    cis4 b8 cis dis[ e] fis e4 dis8 cis8[ gis'] fis a--[ gis] gis4 \bar "'"
    gis8 a gis fis \bar "" e[ gis] \bar "" gis[ fis] fis4 e8 \bar ""
    dis8[ e] dis fis4 fis8 e dis
    dis[ cis] cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    gis2 b2. cis4. e2~ e2~ e4 cis\breve*5/16 dis2. b4 gis2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    gis2 fis2. gis4. b2~ b2~ b4 a\breve*5/16 fis2.~ fis4~ fis e
}
bassNotesAnt = \relative c {
    \global
    \keysig
    cis2 b2. e4.~ e2~ e2 gis4 a\breve*5/16 b,2. gis4 cis2
}
