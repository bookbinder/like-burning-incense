\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major 
antiphon = "1"
psalmtone = "45"
psalmtonestruct = "42"
psalmnum = "Ps_24"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    The man whose deeds are blame -- less " * " 
    and whose heart is pure will climb the moun -- tain of the Lord.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    r8 cis8 e[ dis] cis dis e \bar "" fis[ gis fis] fis4
    \hideNotes gis16 \unHideNotes   %so that I can align the * better
   fis8 \bar "" e[ fis] fis[ gis a gis] fis \bar "" fis4( gis) \breathe
   gis8 \bar "" fis[ gis] fis \bar "" e[ cis] cis4 b8 cis \bar "" dis4( cis) \bar "||"  
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    gis\breve*7/16 cis2.~ s16
    cis4 e\breve*5/16~ e\breve*5/16 
    cis4. s4 s4 s4 gis2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e\breve*7/16~ e2. s16
    a4~ a\breve*5/16 b\breve*5/16 
    a4. gis4 e dis e2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis\breve*7/16 a2.~ s16
    a4 cis\breve*5/16 e\breve*5/16 
    a4. cis,2.~ cis2
}
