\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "1"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Ps_118"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    Praise the \ll "Lord,  * " _
    for his lo -- ving kind -- ness will ne -- ver fail,
    al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    e8[ dis] e cis4( b) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    e8 fis \bar "" gis[ b] gis \bar "" fis gis fis \bar ""
    a[ gis] fis \bar "" a4 \bar "'"
    gis8 \bar "" fis[ gis] \bar "" fis[ e] e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    b4. s2
    s16
    e4 dis4. cis e cis~
    cis4 b2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    gis4. fis2
    s16
    gis4~ gis4. a4.~ a~ a~ a4~ a gis
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e4. dis2
    s16
    cis4 b4. a cis fis a,4 e'2
}
