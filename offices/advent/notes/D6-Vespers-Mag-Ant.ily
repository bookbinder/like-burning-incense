\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor
antiphon = "M"
psalmtone = "56"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% Transposition interval after accounting for psalm tone
master-from-pitch = ais
master-to-pitch = a


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