\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "1"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Ps_108"
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
    My heart is rea -- dy, O God, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    my heart is rea -- dy.
}
sopNotesAnt = \relative e' {
    r8 e8 dis4 e8 cis b cis e4( fis) \bar ""
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak fis8
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak e4
    \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
    s1 cis\breve*5/16~
    s16
    cis4. b2
}
tenorNotesAnt = \relative g {
    e1~ e\breve*5/16
    s16
    a4.~ a4 gis
}
bassNotesAnt = \relative c {
    gis1 a\breve*5/16~
    s16
    a4. e'2
}
