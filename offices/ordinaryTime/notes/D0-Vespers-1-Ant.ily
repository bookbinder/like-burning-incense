\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "1"
psalmtone = "8"
psalmtonestruct = "33"
psalmnum = "Ps_110_1-5,_7"
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
    Pray for peace,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    for the peace of Je -- ru -- sa -- lem.
}
sopNotesAnt = \relative e' {
    gis4 fis8 a4( gis) \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak gis8
    \allowBreak gis
    \allowBreak fis[ a]
    \allowBreak gis
    \allowBreak fis
    \allowBreak a
    \allowBreak gis
    \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
    s4. s2
    s16
    e4~ e2~ e
}
tenorNotesAnt = \relative g {
    b4. e2
    s16
    b4 a2 cis4 b
}
bassNotesAnt = \relative c {
    e4.~ e2~
    s16
    e4~ e2~ e
}
