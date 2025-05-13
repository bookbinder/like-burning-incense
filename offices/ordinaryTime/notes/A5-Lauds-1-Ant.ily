\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major 
antiphon = "1"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Ps_57"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    A -- wake, lyre and harp,
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    with praise let us a -- wake the dawn.
}
sopNotesAnt = \relative e' {
    r8 b8 e4 cis8[ e] e8 fis4
    \noBreak \hideNotes fis16 \unHideNotes   %so that I can align the * better
    \allowBreak fis8
    \allowBreak gis4
    \allowBreak gis8
    \allowBreak fis
    \allowBreak gis
    \allowBreak a[ gis]
    \allowBreak fis
    \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
    r8 \hideNotes b8~ \unHideNotes b4 cis4.~ cis4. s16
    b\breve*5/16 cis4. b4
}    
tenorNotesAnt = \relative g {
    e2~ e4. a4. s16
    gis\breve*5/16 fis4. gis4
}
bassNotesAnt = \relative c {
    gis2 a4.~ a4. s16
    e'\breve*5/16 ~ e4.~ e4
}
