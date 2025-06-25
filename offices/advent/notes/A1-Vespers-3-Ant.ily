\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key g \major 
antiphon = "3"
psalmtone = "68"
psalmtonestruct = "special"
psalmnum = "Rev_19_1-7"
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