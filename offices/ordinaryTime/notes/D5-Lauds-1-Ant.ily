\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor
antiphon = "1"
psalmtone = "53"
psalmtonestruct = "43"
psalmnum = "Ps_143_1-11"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = cis
master-to-pitch = c

text = \lyricmode {
    \set includeGraceNotes = ##t
    At day -- break, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    be mer -- ci -- ful to me, O Lord.
}
sopNotesAnt = \relative e' {
    r8 gis8 fis[ ais gis] gis4
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak gis8
    \allowBreak fis
    \allowBreak e
    \allowBreak dis
    \allowBreak e
    \allowBreak fis4
    \allowBreak fis8[ e]
    \allowBreak e4( dis) \bar "||"
}
altoNotesAnt = \relative c' {
    dis4 cis4. dis 
    s16
    cis\breve*8/16 b2
}
tenorNotesAnt = \relative g {
    b4 ais4. b 
    s16
    gis\breve*8/16~ gis2
}
bassNotesAnt = \relative g {
    gis4~ gis4.~ gis4.~
    s16
    cis,\breve*8/16 gis2
}
