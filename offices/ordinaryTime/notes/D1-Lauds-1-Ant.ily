\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "1"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Ps_118"
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
    Praise the Lord,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    for his lo -- ving kind -- ness will ne -- ver fail,
    al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    e8[ dis] e cis4( b) \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak e8
    \allowBreak fis
    \allowBreak gis[ b]
    \allowBreak gis
    \allowBreak fis
    \allowBreak gis
    \allowBreak fis
    \allowBreak a[ gis]
    \allowBreak fis
    \allowBreak a4 \bar "'"
    \allowBreak gis8
    \allowBreak fis[ gis]
    \allowBreak fis[ e]
    \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
    b4. s2
    s16
    e4 dis4. cis e cis~
    cis4 b2
}
tenorNotesAnt = \relative g {
    gis4. fis2
    s16
    gis4~ gis4. a4.~ a~ a~ a4~ a gis
}
bassNotesAnt = \relative c {
    e4. dis2
    s16
    cis4 b4. a cis fis a,4 e'2
}
