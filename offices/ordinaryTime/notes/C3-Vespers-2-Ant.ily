\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "2"
psalmtone = "9"
psalmtonestruct = "33"
psalmnum = "Ps_131"
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
    Un -- less you ac -- quire  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    the heart of a child, you can -- not en -- ter
    the king -- dom of God.
}
sopNotesAnt = \relative e' {
    r8 gis8 a gis gis fis4
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak gis8
    \allowBreak a4
    \allowBreak a8
    \allowBreak a
    \allowBreak gis4 \bar "'"
    \allowBreak e8
    \allowBreak e
    \allowBreak dis[ e]
    \allowBreak cis[ b]
    \allowBreak b
    \allowBreak e
    \allowBreak fis[ a]
    \allowBreak gis
    \allowBreak fis
    \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
    b\breve*5/16 cis\breve*7/16
    s16
    b2 cis4 s2 e2 b4
}
tenorNotesAnt = \relative g {
    e\breve*5/16~ e\breve*7/16~
    s16
    e2~ e4 dis2 a' gis4
}
bassNotesAnt = \relative c {
    e\breve*5/16 a,\breve*7/16
    s16
    e4 gis fis b2 cis e4
}
