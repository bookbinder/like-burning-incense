\version "2.20.0"
%% include "../../../lbi_defs.ily"

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
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    If you hun -- ger for ho -- li -- \ll "ness,  * " _
    God will sa -- tis -- fy your long -- ing,
    good mea -- sure, and flow -- ing o -- ver.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    cis8 dis e4 e8 e fis e dis4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    dis8[ e] dis \bar "" e dis cis b \bar "" cis[ dis] dis4 \bar "'"
    e8[ fis] \bar "" gis4 gis8 fis \bar "" 
    gis[( gis gis)] gis \bar "" cis,4 cis \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    gis2. b2~
    s16
    b4. gis2 b2~
    b4~ b2 cis a4 gis
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    e2. dis2
    s16
    fis4. e2 gis
    e4~ e2~ e~ e
}
bassNotesAnt = \relative c {
    \global
    \keysig
    cis2. b2~
    s16
    b4. cis2 gis2~
    gis4 e2 a cis
}
