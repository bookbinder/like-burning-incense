\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "M"
psalmtone = "42"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    If you hun -- ger for ho -- li -- ness,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    God will sa -- tis -- fy your long -- ing,
    good mea -- sure, and flow -- ing o -- ver.
}
sopNotesAnt = \relative e' {
    cis8 dis e4 e8 e fis e dis4 \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak dis8[ e]
    \allowBreak dis
    \allowBreak e
    \allowBreak dis
    \allowBreak cis
    \allowBreak b
    \allowBreak cis[ dis]
    \allowBreak dis4 \bar "'"
    \allowBreak e8[ fis]
    \allowBreak gis4
    \allowBreak gis8
    \allowBreak fis
    \allowBreak gis[( gis gis)]
    \allowBreak gis
    \allowBreak cis,4
    \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
    gis2. b2~
    s16
    b4. gis2 b2~
    b4~ b2 cis a4 gis
}
tenorNotesAnt = \relative g {
    e2. dis2
    s16
    fis4. e2 gis
    e4~ e2~ e~ e
}
bassNotesAnt = \relative c {
    cis2. b2~
    s16
    b4. cis2 gis2~
    gis4 e2 a cis
}
%% update
