\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor
antiphon = "1"
psalmtone = "38"
psalmtonestruct = "32"
psalmnum = "Ps_123"
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
    Our eyes are fixed in -- ten -- tly on the Lord  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    wai -- ting for his mer -- ci -- ful help.
}
sopNotesAnt = \relative e' {
    r8 cis8 e[ dis] cis dis4 e8 gis fis fis fis dis4 \bar ""
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak e8
    \allowBreak dis
    \allowBreak cis
    \allowBreak dis
    \allowBreak e4
    \allowBreak e8
    \allowBreak e
    \allowBreak e4( dis) \bar "||"
}
altoNotesAnt = \relative c' {
    gis4~ gis4. b4. cis2 b4
    s16
    gis2 cis2 b
}
tenorNotesAnt = \relative g {
    e4~ e4. fis e2 fis4
    s16
    e2 gis2~ gis
}
bassNotesAnt = \relative c {
    cis4~ cis4. b~ b2~ b4
    s16
    cis2~ cis gis
}
