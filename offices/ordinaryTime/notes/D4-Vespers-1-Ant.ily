\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "1"
psalmtone = "56"
psalmtonestruct = "43"
psalmnum = "Ps_139_1-12"
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
    Lord, how won -- der -- ful is your wis -- dom,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    so far be -- yond my un -- der -- stand -- ing.
}
sopNotesAnt = \relative e' {
    cis8[ b] cis e dis cis dis e fis4 fis
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak fis8[ gis]
    \allowBreak gis4
    \allowBreak fis8
    \allowBreak e
    \allowBreak e
    \allowBreak dis
    \allowBreak e
    \allowBreak dis[ cis]
    \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    s1 b2.~
    s16
    b4.~ b2 gis
}
tenorNotesAnt = \relative g {
    gis\breve*8/16 fis2.
    s16
    e4.~ e4 fis4~ fis e
}
bassNotesAnt = \relative c {
    e\breve*8/16 dis2.
    s16
    e4. gis,4 b cis2
}
