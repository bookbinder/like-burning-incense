\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key gis \minor 
antiphon = "1"
psalmtone = "38"
psalmtonestruct = "32"
psalmnum = "Ps_41"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, lay your heal -- ing hand up -- on me,  "* "
    for I have sinned
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    gis4 fis8 gis ais4 gis8 fis[ gis] fis dis4 dis4  
    \hideNotes dis16 \unHideNotes   %so that I can align the * better
    dis8 \bar "" cis dis \bar "" fis4( dis) \bar "||" 
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    dis2 e4. cis4.~ cis4 b4.s16
    gis4 cis( b)
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    b2~ b4. gis4. fis4~ fis4. s16
    e4 gis2
}
bassNotesAnt = \relative e {
    \global
    \keysig
    gis2 e4.~ e4. b4~ b4. s16
    cis4 gis2
}
