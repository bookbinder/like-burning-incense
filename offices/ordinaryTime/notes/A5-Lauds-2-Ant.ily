\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor 
antiphon = "2"
psalmtone = "45"
psalmtonestruct = "42"
psalmnum = "Jer_31_10-14"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    My peo -- ple, says the Lord,  "* "
    will be filled with my bles -- sings. 
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    r8 gis8 fis[ gis] gis fis e fis[( e] cis4) 
    \hideNotes cis16 \unHideNotes   %so that I can align the * better
    cis8 b dis[ fis] e dis \bar ""
    \allowBreak e[ cis] \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    gis\breve*7/16 cis2~ s16
    cis4 b2 gis2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    e\breve*7/16~ e2 s16
    a4 fis2~ fis4 e
}
bassNotesAnt = \relative c {
    \global
    \keysig
    cis\breve*7/16 a2~ s16
    a4 b gis cis2
}
