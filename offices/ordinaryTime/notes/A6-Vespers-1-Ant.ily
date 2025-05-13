\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor 
antiphon = "1"
psalmtone = "38"
psalmtonestruct = "32"
psalmnum = "Ps_41"
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
    Lord, lay your heal -- ing hand up -- on me,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    for I have sinned
}
sopNotesAnt = \relative e' {
    gis4 fis8 gis ais4 gis8 fis[ gis] fis dis4 dis4  
    \hideNotes dis16 \unHideNotes   %so that I can align the * better
    \allowBreak dis8
    \allowBreak cis
    \allowBreak dis
    \allowBreak fis4( dis) \bar "||"
}
altoNotesAnt = \relative c' {
    dis2 e4. cis4.~ cis4 b4.s16
    gis4 cis( b)
}    
tenorNotesAnt = \relative g {
    b2~ b4. gis4. fis4~ fis4. s16
    e4 gis2
}
bassNotesAnt = \relative e {
    gis2 e4.~ e4. b4~ b4. s16
    cis4 gis2
}
