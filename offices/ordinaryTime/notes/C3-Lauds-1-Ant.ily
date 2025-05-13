\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "1"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "Ps_85"
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
    Lord, you have blessed your land;  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    you have for -- giv -- en the sins of your peo -- ple.
}
sopNotesAnt = \relative e' {
    e4 b8 cis \bar "" cis[ gis'] a gis4 \bar ""
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak gis8
    \allowBreak gis
    \allowBreak gis
    \allowBreak fis
    \allowBreak gis
    \allowBreak fis
    \allowBreak e[ cis]
    \allowBreak b
    \allowBreak cis
    \allowBreak dis[ cis]
    \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    s2 cis4. e\breve*5/16
    s16
    cis4.~ cis4 s4 gis2
}
tenorNotesAnt = \relative g {
    gis4 fis gis4. b\breve*5/16
    s16
    a4. gis4 fis4~ fis e
}
bassNotesAnt = \relative c {
    cis4 dis e4.~ e\breve*5/16~
    s16
    e4.~ e4 dis cis2
}
