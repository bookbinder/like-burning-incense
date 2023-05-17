\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major 
antiphon = "1"
psalmtone = "9"
psalmtonestruct = "33"
psalmnum = "Ps_11"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord looks ten -- der -- ly " * " 
    on those who are poor.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    r8 e8 dis[ e] cis cis b b4 
    \hideNotes b16 \unHideNotes   %so that I can align the * better
    e8 fis[ a] gis8 fis e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    b\breve*10/16 s16 
    e2 b4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis\breve*5/16 a4 gis4. s16
    cis4 a gis
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*5/16~ e4~ e4.~ s16
    e2~ e4
}
