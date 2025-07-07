\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "3"
psalmtone = "45"
psalmtonestruct = "42"
psalmnum = "Rev_4_11_and_5_9,_10,_12"
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
    Lord, you have made us a king -- dom  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    and priests for God our Fa -- ther.
}
sopNotesAnt = \relative e' {
    e4 b8 cis cis[ gis'] fis e fis[ gis fis] fis4
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak fis8
    \allowBreak gis[ fis]
    \allowBreak e
    \allowBreak fis4
    \allowBreak e8
    \allowBreak dis[ cis]
    \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    s1 s16 s2. e4. cis a4 gis
}
tenorNotesAnt = \relative g {
    gis4 fis gis2 b2.
    s16
    gis4. a fis4 e
}
bassNotesAnt = \relative c {
    cis4 dis e2 dis2.
    s16
    cis2.~ cis2
}
