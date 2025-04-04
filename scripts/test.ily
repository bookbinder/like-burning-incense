\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig = \key c \major 
antiphon = "3"
psalmtone = "20"
psalmtonestruct = "42"
psalmnum = "Ps_149"
% transposition interval for  the corresponding psalm tone
	% to match the key c of this antiphon. For
	% use in cantor (antiphon) score:
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    " * "
}
sopNotesAnt = \relative fis' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne

}
altoNotesAnt = \relative d' {
    \global
    \keysig
    \voiceTwo

}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne

}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo

}