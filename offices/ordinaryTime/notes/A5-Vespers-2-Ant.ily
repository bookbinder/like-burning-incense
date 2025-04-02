\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor 
antiphon = "2"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "Ps_32"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    The one who is sin -- less in the eyes of God  "* "
    is bless -- ed in -- deed.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    r8 cis8 e dis cis dis[ e] dis dis e \bar "" fis[ gis] fis \bar "" fis4   
    \hideNotes fis16 \unHideNotes   %so that I can align the * better
    fis8 \bar "" gis[( fis] gis4) gis8 fis \bar "" e4( cis) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    gis\breve*5/16 b\breve*5/16 cis4. b4. s16
    cis2. gis2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    e\breve*5/16 fis\breve*5/16 e4. dis4. s16 
    fis2.~ fis4( e)
}
bassNotesAnt = \relative c {
    \global
    \keysig
    cis\breve*5/16 b\breve*5/16~ b4.~ b4. s16 
    a2. cis2
}
