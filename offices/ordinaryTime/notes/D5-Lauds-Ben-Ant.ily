\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor
antiphon = "B"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Benedictus"
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
    Give your peo -- ple know -- ledge of sal -- va -- tion, Lord,
    \noBreak 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    and for -- give us our sins.
}
sopNotesAnt = \relative e' {
    e8 dis cis b cis[ gis'] gis fis e fis[ gis] \allowBreak
    fis \allowBreak fis4
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak fis8
    \allowBreak gis
    \allowBreak cis,[ fis]
    \allowBreak fis
    \allowBreak e
    \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    gis4 s4 cis\breve*12/16
    s16
    cis4~ cis b
}
tenorNotesAnt = \relative g {
    e4 fis gis\breve*5/16 b\breve*7/16
    s16
    gis4~ gis~ gis
}
bassNotesAnt = \relative c {
    cis4 dis e\breve*5/16 dis\breve*7/16
    s16
    e4 cis gis
}
