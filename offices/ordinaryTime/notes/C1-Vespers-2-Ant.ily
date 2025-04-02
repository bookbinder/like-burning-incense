\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "2"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Ps_111"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Our com -- pas -- sion -- ate \ll "Lord  * " _
    has left us a me -- mo -- rial of his won -- der -- ful work,
    al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    e8 fis gis gis gis fis[( a] gis4) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    gis8 \bar "" a gis fis gis \bar "" b[ gis] gis4 
    fis8 e \bar "" fis fis gis fis4 \bar "'"
    e8 \bar "" cis[ e] \bar "" fis[ e] \bar "" e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    e4~ e4.~ e\breve*5/16~
    s16
    e2~ e2. cis2.~ cis4 b2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    gis4 b4. cis4 b4.
    s16
    a2 e2.~ e2. a4~ a gis
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e4~ e4.~ e\breve*5/16
    s16
    cis2 gis2. a2.~ a4 e'2
}
