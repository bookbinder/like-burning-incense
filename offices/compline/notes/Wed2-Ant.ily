\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key gis \minor 
antiphon = "2"
psalmtone = "53"
psalmtonestruct = "43"
psalmnum = "Ps_130"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = aes
topitch = aes


text = \lyricmode {
    \set includeGraceNotes = ##t
    Out of the "depths * " I cry to you, Lord.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    dis4 fis8 gis ais4 \bar "'"
    gis8 fis[ gis] fis dis[ cis] fis4( dis) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    ais\breve*7/16 cis\breve*5/16~ cis4 b
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    fis\breve*7/16 gis\breve*5/16~ gis2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    dis\breve*7/16 e\breve*5/16 gis,2
}
