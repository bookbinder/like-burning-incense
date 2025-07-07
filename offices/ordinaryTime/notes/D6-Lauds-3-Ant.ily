\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "3"
psalmtone = "9"
psalmtonestruct = "33"
psalmnum = "Ps_147_12-20"
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
    Zi -- on, praise your God,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    who sent his word to re -- new the earth.
}
sopNotesAnt = \relative e' {
    gis8[ a] gis fis4 gis8 b4( gis) \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak fis8
    \allowBreak e[ fis]
    \allowBreak e
    \allowBreak fis[( gis] a4)
    \allowBreak a8
    \allowBreak a
    \allowBreak gis
    \allowBreak fis
    \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
    e2.~ e4~ e4.
    s16
    cis4. e\breve*8/16 b4
}
tenorNotesAnt = \relative g {
    b4. a gis4( b4.)
    s16
    a4.~ a\breve*8/16 gis4
}
bassNotesAnt = \relative c {
    e2.~ e4~ e4.
    s16
    a4. cis,\breve*8/16 e4
}
