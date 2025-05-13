\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor
antiphon = "1"
psalmtone = "53"
psalmtonestruct = "43"
psalmnum = "Ps_125"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
     The Lord sur -- rounds his peo -- ple  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    with his strength.
}
sopNotesAnt = \relative e' {
    r8 dis dis[ gis] gis fis4 gis8 b[ ais gis] gis4
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak fis8
    \allowBreak e
    \allowBreak e4( dis) \bar "||"
}
altoNotesAnt = \relative c' {
    r8 dis8~ dis4.~ dis cis\breve*5/16~
    s16
    cis4 b2
}
tenorNotesAnt = \relative g {
    b4~ b4. ais4. gis\breve*5/16~
    s16
    gis4~ gis2
}
bassNotesAnt = \relative c' {
    gis4~ gis4. dis4. e\breve*5/16
    s16
    cis4 gis2

}
