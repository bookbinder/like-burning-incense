\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor 
antiphon = "3"
psalmtone = "42"
psalmtonestruct = "43"
psalmnum = "Ps_100"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Let us go in -- to God's pre -- sence  "* "
    sing -- ing for joy.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    cis8 dis e4 cis8 e e[ fis] gis[ b gis] gis4 
    \hideNotes gis16 \unHideNotes   %so that I can align the * better
    fis8[ gis] fis gis cis,4 \bar "||"  
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    gis1 dis'\breve*5/16 s16
    cis2 gis4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    e1 fis\breve*5/16~ s16
    fis2 e4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    cis1 gis\breve*5/16 s16
    a2 cis4
}
