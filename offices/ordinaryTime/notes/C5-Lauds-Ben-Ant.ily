\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key gis \minor
antiphon = "B"
psalmtone = "38"
psalmtonestruct = "32"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
     Let us serve the Lord in ho -- li -- ness,  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    and he will save us from our e -- ne -- mies.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    dis8 cis dis[ fis] fis gis[ ais] gis ais gis gis4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    gis8 \bar "" fis gis \bar ""
    ais4 ais8 \bar "" gis fis \bar "" fis dis dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s4 dis4. e4.~ e4~ e4.~
    s16
    e4 cis4.~ cis4~ cis b
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    b4~ b4.~ b4. cis4 b4.~
    s16
    b4 fis4. e4 gis2
}
bassNotesAnt = \relative c' {
    \global
    \keysig
    gis4 fis4. e4.~ e4~ e4.~
    s16
    e4 fis4. cis4 gis2
}
