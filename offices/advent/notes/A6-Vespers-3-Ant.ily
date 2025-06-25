\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major 
antiphon = "3"
psalmtone = "4"
psalmtonestruct = "33"
psalmnum = "Rev_15_3-4"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  " * "
}
sopNotesAnt = \relative fis' {
		
}
altoNotesAnt = \relative d' {
}    
tenorNotesAnt = \relative g {
}
bassNotesAnt = \relative c {
}