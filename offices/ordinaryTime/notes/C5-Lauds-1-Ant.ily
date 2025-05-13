\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "1"
psalmtone = "12"
psalmtonestruct = "34"
psalmnum = "Ps_87"
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
    Glo -- rious things are said of you,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    O Ci -- ty of God.
}
sopNotesAnt = \relative e' {
    gis8[ a] gis gis gis fis[ gis] fis e4
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak e8
    \allowBreak fis[ e]
    \allowBreak cis
    \allowBreak b
    \allowBreak cis4( e) \bar "||"
}
altoNotesAnt = \relative c' {
    e\breve*5/16 cis\breve*6/16
    s16
    cis4 s4 a4( gis)
}
tenorNotesAnt = \relative g {
    b\breve*5/16 a\breve*6/16~ 
    s16
    a4 dis,4 e2
}
bassNotesAnt = \relative c {
    e\breve*5/16 a\breve*6/16
    s16
    a,4 b e,2

}
