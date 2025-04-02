\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major 
antiphon = "1"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Ps_20"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    God has crowned his Christ  "*" 
    with vic -- tor -- y.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    e8[ dis] e cis[ dis] e fis[( gis] fis4) 
    \hideNotes fis16 \unHideNotes   %so that I can align the * better
    fis8 gis[ fis] e e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    b4. cis4.~ cis\breve*5/16 s16
    b4.~ b4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    e4.~ e4. a\breve*5/16~ s16
    a4. gis4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    gis4. a4.~ a\breve*5/16 s16
    e'4.~ e4
}
