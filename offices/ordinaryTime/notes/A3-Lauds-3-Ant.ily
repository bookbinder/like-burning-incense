\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key b \major 
antiphon = "3"
psalmtone = "55"
psalmtonestruct = "32"
psalmnum = "Ps_33"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The loy -- al heart " * " 
    must praise the Lord.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    r8 dis8 fis gis gis4  
    \hideNotes gis16 \unHideNotes   %so that I can align the * better
    gis8 fis[( gis] ais4) fis8 gis4 \bar "||" 
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s2 cis4. s16
    fis\breve*5/16 dis4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    b2 gis4. s16
    ais\breve*5/16 b4
}
bassNotesAnt = \relative e {
    \global
    \keysig
    \voiceTwo
    gis2 e4. s16
    dis\breve*5/16 gis4
}
