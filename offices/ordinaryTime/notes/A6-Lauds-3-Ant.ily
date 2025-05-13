\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor 
antiphon = "3"
psalmtone = "42"
psalmtonestruct = "43"
psalmnum = "Ps_100"
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
    Let us go in -- to God's pre -- sence
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    sing -- ing for joy.
}
sopNotesAnt = \relative e' {
    cis8 dis e4 cis8 e e[ fis] gis[ b gis] gis4 
    \hideNotes gis16 \unHideNotes   %so that I can align the * better
    \allowBreak fis8[ gis]
    \allowBreak fis
    \allowBreak gis
    \allowBreak cis,4 \bar "||"
}
altoNotesAnt = \relative c' {
    gis1 dis'\breve*5/16 s16
    cis2 gis4
}    
tenorNotesAnt = \relative g {
    e1 fis\breve*5/16~ s16
    fis2 e4
}
bassNotesAnt = \relative c {
    cis1 gis\breve*5/16 s16
    a2 cis4
}
