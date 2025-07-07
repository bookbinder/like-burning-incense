\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "1"
psalmtone = "9"
psalmtonestruct = "33"
psalmnum = "Ps_144_1-8"
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
    He is my com -- fort and my re -- fuge.  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    In him I put my trust.
}
sopNotesAnt = \relative e' {
    e4 cis8 b cis[ e] e fis a a[ gis] gis4 \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak gis8
    \allowBreak fis[( gis] a4)
    \allowBreak a8
    \allowBreak gis
    \allowBreak fis
    \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
    s1 s8 e\breve*5/16
    s16
    cis\breve*7/16 b4
}
tenorNotesAnt = \relative g {
    gis\breve*7/16 a4 b\breve*5/16
    s16
    a\breve*7/16 gis4
}
bassNotesAnt = \relative c {
    e\breve*7/16~ e4~ e\breve*5/16~
    s16
    e\breve*7/16~ e4
}
