\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor
antiphon = "B"
psalmtone = "38"
psalmtonestruct = "32"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = cis
master-to-pitch = c


text = \lyricmode {
    \set includeGraceNotes = ##t
     Let us serve the Lord in ho -- li -- ness,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    and he will save us from our e -- ne -- mies.
}
sopNotesAnt = \relative e' {
    dis8 cis dis[ fis] fis gis[ ais] gis ais gis gis4 \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak gis8
    \allowBreak fis
    \allowBreak gis
    \allowBreak ais4
    \allowBreak ais8
    \allowBreak gis
    \allowBreak fis
    \allowBreak fis
    \allowBreak dis
    \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    s4 dis4. e4.~ e4~ e4.~
    s16
    e4 cis4.~ cis4~ cis b
}
tenorNotesAnt = \relative g {
    b4~ b4.~ b4. cis4 b4.~
    s16
    b4 fis4. e4 gis2
}
bassNotesAnt = \relative c' {
    gis4 fis4. e4.~ e4~ e4.~
    s16
    e4 fis4. cis4 gis2
}
