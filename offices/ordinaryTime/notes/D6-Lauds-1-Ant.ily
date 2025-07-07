\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor
antiphon = "1"
psalmtone = "56"
psalmtonestruct = "43"
psalmnum = "Ps_51"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = ais
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Cre -- ate a clean heart in me, O God  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    re -- new in me a stead -- fast spi -- rit.
}
sopNotesAnt = \relative e' {
    r8 cis8 cis[ e] cis dis[ cis] b cis cis[ gis'] fis gis[( a] gis4) \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak gis8
    \allowBreak fis
    \allowBreak e
    \allowBreak dis[ e]
    \allowBreak fis
    \allowBreak e4
    \allowBreak dis8
    \allowBreak dis[ cis]
    \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    gis\breve*5/16 b2 r4. e\breve*5/16
    s16
    b4~ b2. gis2
}
tenorNotesAnt = \relative g {
    e\breve*5/16 fis2 gis4. b\breve*5/16
    s16
    e,4 fis2.~ fis4 e
}
bassNotesAnt = \relative c {
    cis\breve*5/16 b4 dis e4.~ e\breve*5/16
    s16
    gis,4 b2. cis2
}
