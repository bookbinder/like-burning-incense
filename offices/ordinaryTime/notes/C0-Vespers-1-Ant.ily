\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "1"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Ps_113"
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
    From the ri -- sing of the sun to its set -- ting  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}  
    may the name of the Lord be praised.
}
sopNotesAnt = \relative e' {
    e8 fis gis[ a] gis fis gis a4 a8 b a[ gis] gis4 \bar ""
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak gis8
    \allowBreak a
    \allowBreak b[ cis]
    \allowBreak b
    \allowBreak a
    \allowBreak gis[ fis]
    \allowBreak e
    \allowBreak fis4( e) \bar "||"
}
altoNotesAnt = \relative e' {
    s4 * 3 s8 s4 s8 s8 s2 
    s16
    gis4 e2 cis4. b2
}
tenorNotesAnt = \relative g {
    gis4 b\breve*5/16 cis2 e2
    s16
    b4~ b2 a4.~ a4( gis)
}
bassNotesAnt = \relative c {
    e4~ e\breve*5/16~ e2~ e~
    s16
    e4 gis2 a4. e2
}
