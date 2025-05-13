\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "2"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Ps_111"
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
    Our com -- pas -- sion -- ate Lord  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    has left us a me -- mo -- rial of his won -- der -- ful work,
    al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    e8 fis gis gis gis fis[( a] gis4) \bar ""
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak gis8
    \allowBreak a
    \allowBreak gis
    \allowBreak fis
    \allowBreak gis
    \allowBreak b[ gis]
    \allowBreak gis4
    \allowBreak fis8
    \allowBreak e
    \allowBreak fis
    \allowBreak fis
    \allowBreak gis
    \allowBreak fis4 \bar "'"
    \allowBreak e8
    \allowBreak cis[ e]
    \allowBreak fis[ e]
    \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
    e4~ e4.~ e\breve*5/16~
    s16
    e2~ e2. cis2.~ cis4 b2
}
tenorNotesAnt = \relative g {
    gis4 b4. cis4 b4.
    s16
    a2 e2.~ e2. a4~ a gis
}
bassNotesAnt = \relative c {
    e4~ e4.~ e\breve*5/16
    s16
    cis2 gis2. a2.~ a4 e'2
}
