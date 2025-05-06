\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key e \major
antiphon = "1"
psalmtone = "14"
psalmtonestruct = "43"
psalmnum = "Ps_63_2-9"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  
}
sopNotesAnt = \relative e' {
    
    

}
altoNotesAnt = \relative c' {
    
    

}
tenorNotesAnt = \relative g {
    
    

}
bassNotesAnt = \relative c {
    
    

}
