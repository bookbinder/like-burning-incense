\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "2"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Isa_42_10-16"
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
    From the far -- thest bounds of earth,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    may God be praised!
}
sopNotesAnt = \relative e' {
    b8 cis e[ dis] cis dis e fis[( gis] fis4) \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak fis4
    \allowBreak e8[ gis fis]
    \allowBreak a
    \allowBreak gis[( fis] e4) \bar "||"
}
altoNotesAnt = \relative c' {
    b\breve*7/16 cis2~ 
    s16
    cis4 e2~ e
}
tenorNotesAnt = \relative g {
    e\breve*7/16~ e2
    s16
    a4~ a2 b4( gis)
}
bassNotesAnt = \relative c {
    gis\breve*7/16 a2~
    s16
    a4 cis2 e
}
