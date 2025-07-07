\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "3"
psalmtone = "9"
psalmtonestruct = "33"
psalmnum = "Col_1_12-20"
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
    Through him all things were made;  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    he holds all cre -- a -- tion to -- ge -- ther in him -- self.
}
sopNotesAnt = \relative e' {
    e4 cis8[ e] fis[ e] dis cis b4 \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak e8
    \allowBreak fis[ a]
    \allowBreak gis[ b]
    \allowBreak cis
    \allowBreak b4
    \allowBreak b8
    \allowBreak a
    \allowBreak gis
    \allowBreak a
    \allowBreak gis
    \allowBreak fis
    \allowBreak fis4( e) \bar "||"
}
altoNotesAnt = \relative c' {
    b2 cis4 s2
    s16
    s8 e4 gis\breve*7/16 cis,2 b
}
tenorNotesAnt = \relative g {
    gis2 a gis4.
    s16
    a4 b\breve*7/16 a2~ a4 gis
}
bassNotesAnt = \relative c {
    e2~ e2~ e4.~
    s16
    e4~ e\breve*7/16~ e2~ e
}
