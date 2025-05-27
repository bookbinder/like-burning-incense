\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key a \minor
antiphon = "B"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
     " 
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
