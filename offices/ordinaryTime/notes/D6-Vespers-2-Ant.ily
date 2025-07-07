\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor
antiphon = "2"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Ps_145_13b-21"
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
    To you a -- lone,  Lord,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    we look with con -- fi -- dence: you are e -- ver
    close to those who call u -- pon you.
}
sopNotesAnt = \relative e' {
    r8 cis8 cis[ e] e fis[ gis] gis4( fis) \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak fis8
    \allowBreak e[( fis] e4)
    \allowBreak e8
    \allowBreak e
    \allowBreak dis
    \allowBreak dis4 \bar "'"
    \allowBreak dis8
    \allowBreak e
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak gis[( b] gis4)
    \allowBreak gis8
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak fis
    \allowBreak e
    \allowBreak dis4
    \allowBreak dis \bar "||"
}
altoNotesAnt = \relative c' {
    gis\breve*7/16 b\breve*5/16~
    s16
    b\breve*5/16~ b2.~ b4.~ b\breve*5/16
    cis4.~ cis4~ cis4 b
}
tenorNotesAnt = \relative g {
    e\breve*7/16 dis\breve*5/16
    s16
    e\breve*5/16 fis2.~ fis4. e\breve*5/16~
    e4. gis4~ gis2
}
bassNotesAnt = \relative c {
    cis\breve*7/16 b\breve*5/16
    s16
    gis\breve*5/16 b2. dis4. e\breve*5/16 cis4.~ cis4 gis2
}
