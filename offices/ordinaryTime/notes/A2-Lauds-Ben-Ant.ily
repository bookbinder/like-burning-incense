\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major 
antiphon = "B"
psalmtone = "8"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
     Bless -- ed be the Lord, "* " our God.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    gis8[ a] gis fis gis a[( gis] fis4)  
    \hideNotes fis16 \unHideNotes   %so that I can align the * better
    fis8[ a] a4( gis) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    b\breve*5/16 cis2 s16
    e4~ e2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    e\breve*5/16~ e2 s16
    a4 b2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e\breve*5/16 a,2 s16
    cis4 e2
}
